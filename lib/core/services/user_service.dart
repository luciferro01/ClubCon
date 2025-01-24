
import 'package:clubcon/core/failure.dart';
import 'package:clubcon/core/services/shared_prefs_service.dart';
import 'package:clubcon/core/typedefs.dart';
import 'package:clubcon/core/services/dio_service.dart';
import 'package:clubcon/core/services/cache_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fpdart/fpdart.dart';
import 'package:dio/dio.dart';

import '../models/api_response_model.dart';
import '../models/user_model.dart';

class UserService extends GetxService {
  final DioService _dioService = Get.find<DioService>();
  final SharedPreferencesService _sharedPrefs = Get.find();
  final CacheService _cacheService = Get.find();

  FutureEither<UserModel> fetchUser() async {
    try {
      // Try to get cached data first
      final cached = await _cacheService.getCachedUser();
      if (cached != null) {
        return Right(cached);
      }

      final response = await _dioService.dio.get('/user/getUserProfile');
      final responseBody = response.data;
      late UserModel userModel;
      final apiResponse = ApiResponse.fromJson(
        responseBody,
        (data) {
          userModel = UserModel.fromJson(data['user']);
          return userModel;
        },
      );

      if (apiResponse.statusCode == 200 &&
          apiResponse.responseType == 'success') {
        // Cache the new data
        await _cacheService.cacheUser(apiResponse.data);
        return Right(apiResponse.data);
      } else {
        return Left(
          Failure(message: apiResponse.message, errorText: 'failure'),
        );
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
          message: e.toString(),
        ),
      );
    }
  }

  FutureEitherVoid createOrUpdateProfile(UserProfileModel profile) async {
    try {
      debugPrint(profile.toJson().toString());
      // _dioService.printCookies(_dioService.dio.options.baseUrl);
      debugPrint("Inside createOrUpdateProfile");
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

      if (apiResponse.statusCode == 201 &&
          apiResponse.responseType == 'success') {
        // Clear user cache when profile is updated

        debugPrint("it has been called");
        await _cacheService.clearUserCache();
        // await _cacheService.cacheUser(apiResponse.data);
        // final userResponse = await _dioService.dio.get('/user/getUserProfile');
        // final userModel = UserModel.fromJson(userResponse.data['data']['user']);
        // await _cacheService.cacheUser(userModel);

        return const Right(null);
      } else {
        return Left(
          Failure(
            message: apiResponse.message,
            errorText: 'failure',
          ),
        );
      }
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
        // Clear all cache on logout
        await _cacheService.clearAllCache();
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
