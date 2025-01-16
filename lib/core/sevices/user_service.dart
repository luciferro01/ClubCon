// lib/core/services/user_profile_service.dart
import 'package:clubcon/core/failure.dart';
import 'package:clubcon/core/sevices/shared_prefs_service.dart';
import 'package:clubcon/core/typedefs.dart';
import 'package:clubcon/core/sevices/dio_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fpdart/fpdart.dart';
import 'package:dio/dio.dart';

import '../models/api_response_model.dart';
import '../models/user_profile_model.dart';

class UserService extends GetxService {
  final DioService _dioService = Get.find<DioService>();
  final SharedPreferencesService _sharedPrefs = Get.find();

  FutureEither<UserModel> fetchUserProfile() async {
    try {
      final response = await _dioService.dio.get('/user/getUserProfile');
      final responseBody = response.data;
      final apiResponse = ApiResponse.fromJson(
        responseBody,
        (data) => UserModel.fromJson(data['profile']),
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
      return Left(
        Failure(
            errorText: 'failure',
            stackTrace: stackTrace,
            // message: e.toString(),
            message: 'Unexpected Error Occured'),
      );
    }
  }

  FutureEitherVoid createOrUpdateProfile(UserProfileModel profile) async {
    try {
      debugPrint(profile.toJson().toString());
      _dioService.printCookies(_dioService.dio.options.baseUrl);
      final response = await _dioService.dio.post(
        '/user/create-or-update',
        data: profile.toJson(),
        options: Options(),
      );

      final responseBody = response.data;
      final apiResponse = ApiResponse.fromJson(
        responseBody,
        (data) => data,
      );
      // print(apiResponse);
      if (apiResponse.statusCode == 200 &&
          apiResponse.responseType == 'success') {
        return const Right(null);
      } else {
        return Left(
          Failure(
            message: apiResponse.message,
            errorText: 'failure',
          ),
        );
      }
      // return const Right(null);
    } catch (e, stackTrace) {
      if (e is DioException) {
        final errorResponse = e.response?.data;
        debugPrint('Error: $errorResponse');
        if (errorResponse != null && errorResponse['message'] != null) {
          return Left(Failure(
              errorText: 'failure',
              message: errorResponse['message'],
              stackTrace: stackTrace));
        }
      }
      return Left(
        Failure(
          errorText: 'failure',
          stackTrace: stackTrace,
          message: 'Unexptected Error Occured',
        ),
      );
    }
  }

  FutureEitherVoid logout() async {
    try {
      final response = await _dioService.dio.post(
        '/auth/logout',
      );
      final responseBody = response.data;
      final apiResponse = ApiResponse.fromJson(
        responseBody,
        (data) => data,
      );
      if (apiResponse.statusCode == 200 &&
          apiResponse.responseType == 'success') {
        _dioService.clearCookies();
        _sharedPrefs.setIsLoggedIn(false);
        return const Right(null);
      } else {
        return Left(
            Failure(message: apiResponse.message, errorText: 'failure'));
      }
    } catch (e, stackTrace) {
      if (e is DioException) {
        debugPrint('Error: ${e.message}');
        final errorResponse = e.response?.data;
        if (errorResponse != null && errorResponse['message'] != null) {
          return Left(Failure(
              errorText: 'failure',
              message: errorResponse['message'],
              stackTrace: stackTrace));
        }
      }
      debugPrint('Error: ${e.toString()}');
      return Left(Failure(
          errorText: 'failure', stackTrace: stackTrace, message: e.toString()));
    }
  }
}
