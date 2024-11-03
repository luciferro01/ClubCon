import 'package:dio/dio.dart';
import 'package:get/get.dart';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter/material.dart';

class DioService extends GetxService {
  Dio dio = Dio();

  DioService() {
    final baseUrl = dotenv.env['ENVIRONMENT'] == 'Production'
        ? dotenv.env['PROD_URL']
        : dotenv.env['DEV_URL'];
    dio.options = BaseOptions(
      baseUrl: baseUrl ?? "",
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      connectTimeout: const Duration(seconds: 100),
      receiveTimeout: const Duration(seconds: 100),
    );

    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        debugPrint('Requesting: ${options.method} ${options.path}');
        return handler.next(options);
      },
      onResponse: (response, handler) {
        // response data
        debugPrint('Response: ${response.statusCode} ${response.data}');

        // cookies from the response headers (if present)
        final cookies = response.headers['set-cookie'];
        if (cookies != null) {
          debugPrint('Cookies received: $cookies');
        } else {
          debugPrint('No cookies found in response');
        }
        return handler.next(response);
      },
      onError: (error, handler) {
        debugPrint('Error: ${error.message}');
        return handler.next(error);
      },
    ));
  }
}
