import 'package:dio/adapter.dart';
import 'package:dio/adapter_browser.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import 'http_core.dart';

class HttpDio with DioMixin implements Dio {
  HttpDio({BaseOptions? options, HttpConfig? dioConfig}) {
    options ??= BaseOptions(
      baseUrl: dioConfig?.baseUrl ?? "",
      contentType: Headers.jsonContentType,
      responseType: ResponseType.plain,
      connectTimeout: dioConfig?.connectTimeout,
      sendTimeout: dioConfig?.sendTimeout,
      receiveTimeout: dioConfig?.receiveTimeout,
    )..headers = dioConfig?.headers;
    this.options = options;

    if (kDebugMode) {
      interceptors.add(LogInterceptor(
          responseBody: true,
          error: true,
          requestHeader: true,
          responseHeader: true,
          request: true,
          requestBody: true));
    }
    if (dioConfig?.interceptors?.isNotEmpty ?? false) {
      interceptors.addAll(dioConfig!.interceptors!);
    }

    HttpClientAdapter client;
    if (kIsWeb) {
      client = BrowserHttpClientAdapter();
    } else {
      client = DefaultHttpClientAdapter();
    }

    httpClientAdapter = client;
  }
}
