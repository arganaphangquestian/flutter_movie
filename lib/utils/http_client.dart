import 'package:dio/dio.dart';

import 'constant.dart';

Dio httpClient() {
  final dio = Dio(BaseOptions(
    baseUrl: baseUrl,
    headers: {
      'Content-Type': 'application/json',
    },
  ));
  dio.interceptors.add(InterceptorsWrapper(
    onRequest: (options, handler) {
      options.queryParameters['api_key'] = apiKey;
      return handler.next(options);
    },
  ));
  return dio;
}
