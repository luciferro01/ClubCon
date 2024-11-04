// // lib/features/auth/services/auth_service.dart
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'package:fpdart/fpdart.dart';
// import '../../../core/models/api_response_model.dart';
// import '../models/user_model.dart';

// class AuthService extends GetxService {
//   final String baseUrl;

//   AuthService(this.baseUrl);

//   Future<Either<String, AuthModel>> login(String email, String password) async {
//     try {
//       final response = await http.post(
//         Uri.parse('$baseUrl/auth/login'),
//         headers: {'Content-Type': 'application/json'},
//         body: jsonEncode({'email': email, 'password': password}),
//       );
//       final decodedResponse = jsonDecode(response.body);
//       debugPrint(decodedResponse['data']['action']);
//       if (decodedResponse['data']['action'] != "confirm_new_login") {
//         final apiResponse = ApiResponse.fromJson(
//           decodedResponse,
//           (data) => AuthModel.fromJson(data),
//         );

//         if (apiResponse.statusCode == 200 &&
//             apiResponse.responseType == 'success') {
//           return Right(apiResponse.data);
//         } else if (apiResponse.statusCode == 401 &&
//             apiResponse.message == 'confirm_new_login') {
//           // Handle the case where the user is already logged in
//           final confirmResult = await confirmNewLogin(email, password);
//           return confirmResult;
//         } else {
//           return Left(apiResponse.message);
//         }
//       } else {
//         return Left(decodedResponse['message']);
//       }
//     } catch (e) {
//       try {
//         final errorResponse = jsonDecode(e.toString());
//         if (errorResponse['message'] != null) {
//           return Left(errorResponse['message']);
//         }
//       } catch (_) {}
//       return Left(e.toString());
//     }
//   }

//   Future<Either<String, AuthModel>> confirmNewLogin(
//       String email, String password) async {
//     try {
//       final response = await http.post(
//         Uri.parse('$baseUrl/auth/confirm-new-login'),
//         headers: {'Content-Type': 'application/json'},
//         body: jsonEncode({'email': email, 'password': password}),
//       );
//       debugPrint(response.body);

//       final apiResponse = ApiResponse.fromJson(
//         jsonDecode(response.body),
//         (data) => AuthModel.fromJson(data),
//       );

//       if (apiResponse.statusCode == 200 &&
//           apiResponse.responseType == 'success') {
//         return Right(apiResponse.data);
//       } else {
//         return Left(apiResponse.message);
//       }
//     } catch (e) {
//       try {
//         final errorResponse = jsonDecode(e.toString());
//         if (errorResponse['message'] != null) {
//           return Left(errorResponse['message']);
//         }
//       } catch (_) {
//         // Ignore JSON parsing errors and fall back to e.toString()
//       }
//       return Left(e.toString());
//     }
//   }

//   Future<Either<String, bool>> logout() async {
//     try {
//       final response = await http.post(
//         Uri.parse('$baseUrl/logout'),
//         headers: {'Content-Type': 'application/json'},
//       );

//       final apiResponse = ApiResponse.fromJson(
//         jsonDecode(response.body),
//         (data) => data,
//       );

//       if (apiResponse.statusCode == 200 &&
//           apiResponse.responseType == 'success') {
//         return const Right(true);
//       } else {
//         return Left(apiResponse.message);
//       }
//     } catch (e) {
//       try {
//         final errorResponse = jsonDecode(e.toString());
//         if (errorResponse['message'] != null) {
//           return Left(errorResponse['message']);
//         }
//       } catch (_) {
//         // Ignore JSON parsing errors and fall back to e.toString()
//       }
//       return Left(e.toString());
//     }
//   }
// }

import 'package:clubcon/core/failure.dart';
import 'package:clubcon/core/typedefs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import '../../../core/models/api_response_model.dart';
import '../../../core/sevices/dio_service.dart';
import '../models/user_model.dart';

class AuthService extends GetxService {
  final DioService _dioService = Get.find<DioService>();

  FutureEither<AuthModel> login(String email, String password) async {
    try {
      final response = await _dioService.dio.post(
        '/auth/login',
        data: {'email': email, 'password': password},
        // {'email': email, 'password': password},
      );
      final responseBody = response.data;
      debugPrint(responseBody);

      if (responseBody.containsKey('action') &&
          responseBody['action'] == 'confirm_new_login') {
        return Left(Failure(
            errorText: "confirm_new_login", message: responseBody['message']));
      }

      final apiResponse = ApiResponse.fromJson(
        responseBody,
        (data) => AuthModel.fromJson(data),
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
              errorText: "confirm_new_login",
              message: errorResponse['message']));
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
        // data: {'email': email, 'password': password},
      );
      final responseBody = response.data;

      final apiResponse = ApiResponse.fromJson(
        responseBody,
        (data) => AuthModel.fromJson(data),
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

  Future<Either<String, bool>> logout() async {
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
        return const Right(true);
      } else {
        return Left(apiResponse.message);
      }
    } catch (e) {
      if (e is DioError) {
        final errorResponse = e.response?.data;
        if (errorResponse != null && errorResponse['message'] != null) {
          return Left(errorResponse['message']);
        }
      }
      return Left(e.toString());
    }
  }
}
