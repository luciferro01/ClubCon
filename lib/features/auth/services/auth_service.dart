import 'package:clubcon/core/failure.dart';
import 'package:clubcon/core/typedefs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import '../../../core/models/api_response_model.dart';
import '../../../core/models/user_profile_model.dart';
import '../../../core/sevices/dio_service.dart';
import '../models/user_model.dart';

class AuthService extends GetxService {
  final DioService _dioService = Get.find<DioService>();
//

  //Register
  FutureEitherVoid register(
      String username, String email, String password) async {
    try {
      final response = await _dioService.dio.post(
        '/auth/register',
        data: {
          'username': username,
          'email': email,
          'password': password,
          'organizationId': 1, // static field
        },
      );
      final responseBody = response.data;

      final apiResponse = ApiResponse.fromJson(
        responseBody,
        (data) => data,
      );

      if (apiResponse.statusCode == 201 &&
          apiResponse.responseType == 'success') {
        return const Right(null);
      } else {
        return Left(
            Failure(message: apiResponse.message, errorText: 'failure'));
      }
    } catch (e, stackTrace) {
      if (e is DioException) {
        final errorResponse = e.response?.data;
        if (errorResponse != null && errorResponse['message'] != null) {
          return Left(Failure(
              errorText: 'failure',
              message: errorResponse['message'],
              stackTrace: stackTrace));
        }
      }
      return Left(Failure(
          errorText: 'failure', stackTrace: stackTrace, message: e.toString()));
    }
  }

  FutureEither<String> resendVerifyMail(
    String email,
  ) async {
    try {
      final response = await _dioService.dio.post(
        '/auth/resendVerifyMail',
        data: {'email': email},
      );
      final responseBody = response.data;

      final apiResponse = ApiResponse.fromJson(
        responseBody,
        (data) => data,
      );

      if (apiResponse.statusCode == 200 &&
          apiResponse.responseType == 'success') {
        return Right(apiResponse.message);
      } else {
        return Left(
            Failure(message: apiResponse.message, errorText: 'failure'));
      }
    } catch (e, stackTrace) {
      if (e is DioException) {
        final errorResponse = e.response?.data;
        if (errorResponse != null && errorResponse['message'] != null) {
          return Left(Failure(
              errorText: 'failure',
              message: errorResponse['message'],
              stackTrace: stackTrace));
        }
      }
      return Left(Failure(
          errorText: 'failure', stackTrace: stackTrace, message: e.toString()));
    }
  }

  FutureEither<AuthModel> login(String email, String password) async {
    try {
      final response = await _dioService.dio.post(
        '/auth/login',
        data: {'email': email, 'password': password},
        // {'email': email, 'password': password},
      );
      final responseBody = response.data;

      //Issue Resolved from backend server
      // if (responseBody.containsKey('action') &&
      //     responseBody['action'] == 'confirm_new_login') {
      //   return Left(Failure(
      //       errorText: "confirm_new_login", message: responseBody['message']));
      // }
      // if (responseBody.containsKey('action') &&
      //     responseBody['action'] == 'verifyEmail') {
      //   return Left(Failure(
      //       errorText: "confirm_new_login", message: responseBody['message']));
      // }

      final apiResponse = ApiResponse.fromJson(
        responseBody,
        (data) => AuthModel.fromJson(data['user']),
      );

      if (apiResponse.statusCode == 200 &&
          apiResponse.responseType == 'success') {
        return Right(apiResponse.data);
      } else {
        return Left(
            Failure(message: apiResponse.message, errorText: 'failure'));
      }
    } catch (e, stackTrace) {
      if (e is DioException) {
        final errorResponse = e.response?.data;
        debugPrint(errorResponse.toString());
        debugPrint(errorResponse['data']['action']);
        if (errorResponse != null &&
            errorResponse['message'] != null &&
            errorResponse['data']['action'] == "confirm_new_login") {
          return Left(Failure(
              errorText: "confirm_new_login",
              message: errorResponse['message']));
        } else if (errorResponse != null &&
            errorResponse['message'] != null &&
            errorResponse['data']['action'] == "verifyEmail") {
          return Left(Failure(
              errorText: "verifyEmail", message: errorResponse['message']));
        }
      }
      return Left(Failure(
          errorText: 'failure', stackTrace: stackTrace, message: e.toString()));
    }
  }

  FutureEither<AuthModel> confirmNewLogin(String email, String password) async {
    try {
      final response = await _dioService.dio.post(
        '/auth/confirm-new-login',
      );
      final responseBody = response.data;

      final apiResponse = ApiResponse.fromJson(
        responseBody,
        (data) => AuthModel.fromJson(data['user']),
      );

      if (apiResponse.statusCode == 200 &&
          apiResponse.responseType == 'success') {
        return Right(apiResponse.data);
      } else {
        return Left(
            Failure(message: apiResponse.message, errorText: "Api Error"));
      }
    } catch (e, stackTrace) {
      if (e is DioException) {
        final errorResponse = e.response?.data;
        if (errorResponse != null && errorResponse['message'] != null) {
          // return Left(errorResponse['message']);
          return Left(
            Failure(
              message: errorResponse['message'],
              errorText: "Exception",
              stackTrace: stackTrace,
            ),
          );
        }
      }
      return Left(
        Failure(
            message: e.toString(),
            errorText: "Api Error",
            stackTrace: stackTrace),
      );
    }
  }

  FutureEither<UserProfileModel> getUserProfile() async {
    try {
      final response = await _dioService.dio.get('/user/getUserProfile');
      final responseBody = response.data;
      final apiResponse = ApiResponse.fromJson(
        responseBody,
        (data) => UserProfileModel.fromJson(data['profile']),
      );
      if (apiResponse.statusCode == 200 &&
          apiResponse.responseType == 'success') {
        return Right(apiResponse.data);
      } else {
        return Left(
            Failure(message: apiResponse.message, errorText: 'failure'));
      }
    } catch (e, stackTrace) {
      if (e is DioException) {
        final errorResponse = e.response?.data;
        if (errorResponse != null && errorResponse['message'] != null) {
          return Left(Failure(
              errorText: 'failure',
              message: errorResponse['message'],
              stackTrace: stackTrace));
        }
      }
      return Left(Failure(
          errorText: 'failure', stackTrace: stackTrace, message: e.toString()));
    }
  }

  FutureEitherVoid createOrUpdateProfile(UserProfileModel profile) async {
    try {
      final response = await _dioService.dio.post(
        '/user/create-or-update',
        data: profile.toJson(),
      );
      final responseBody = response.data;
      final apiResponse = ApiResponse.fromJson(
        responseBody,
        (data) => data,
      );
      if (apiResponse.statusCode == 200 &&
          apiResponse.responseType == 'success') {
        return const Right(null);
      } else {
        return Left(
            Failure(message: apiResponse.message, errorText: 'failure'));
      }
    } catch (e, stackTrace) {
      if (e is DioException) {
        final errorResponse = e.response?.data;
        if (errorResponse != null && errorResponse['message'] != null) {
          return Left(Failure(
              errorText: 'failure',
              message: errorResponse['message'],
              stackTrace: stackTrace));
        }
      }
      return Left(Failure(
          errorText: 'failure', stackTrace: stackTrace, message: e.toString()));
    }
  }

  FutureEitherVoid logout() async {
    try {
      final response = await _dioService.dio.post(
        '/logout',
      );
      final responseBody = response.data;
      final apiResponse = ApiResponse.fromJson(
        responseBody,
        (data) => data,
      );
      if (apiResponse.statusCode == 200 &&
          apiResponse.responseType == 'success') {
        return const Right(null);
      } else {
        return Left(
            Failure(message: apiResponse.message, errorText: 'failure'));
      }
    } catch (e, stackTrace) {
      if (e is DioException) {
        final errorResponse = e.response?.data;
        if (errorResponse != null && errorResponse['message'] != null) {
          return Left(Failure(
              errorText: 'failure',
              message: errorResponse['message'],
              stackTrace: stackTrace));
        }
      }
      return Left(Failure(
          errorText: 'failure', stackTrace: stackTrace, message: e.toString()));
    }
  }
}
