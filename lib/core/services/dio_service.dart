import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:cookie_jar/cookie_jar.dart';
import 'package:get/get.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class DioService extends GetxService {
  late Dio dio;
  late CookieJar cookieJar;

  @override
  void onInit() {
    super.onInit();
    _initializeDio();
  }

  void _initializeDio() async {
    dio = Dio();

    final baseUrl = dotenv.env['ENVIRONMENT'] == 'Prod'
        ? dotenv.env['PROD_URL']
        : (dotenv.env['ENVIRONMENT']) == "Pre-Prod"
            ? dotenv.env['PROD_DEV_URL']
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

    final appDocDir = await getApplicationDocumentsDirectory();
    final appDocPath = appDocDir.path;

    cookieJar = PersistCookieJar(storage: FileStorage("$appDocPath/.cookies/"));
    dio.interceptors.add(CookieManager(cookieJar));

    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        debugPrint('Requesting: ${options.method} ${options.path}');
        return handler.next(options);
      },
      onResponse: (response, handler) {
        debugPrint('Response: ${response.statusCode} ${response.data}');
        return handler.next(response);
      },
      onError: (error, handler) {
        debugPrint('Error: ${error.message}');
        return handler.next(error);
      },
    ));
  }

  void printCookies(String url) async {
    debugPrint("Cookies for $url");
    final cookies = await cookieJar.loadForRequest(Uri.parse(url));
    for (var cookie in cookies) {
      debugPrint('Cookie: ${cookie.name}=${cookie.value}');
    }
  }

  Future<void> clearCookies() async {
    await cookieJar.deleteAll();
    debugPrint("All Cookies have been cleared");
  }
}
