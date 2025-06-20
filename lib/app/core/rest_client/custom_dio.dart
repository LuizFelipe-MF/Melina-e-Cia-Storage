import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:melina/app/core/rest_client/interceptors/auth_interceptor.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class CustomDio extends DioForNative {
  late final AuthInterceptor _authInterceptor;

  CustomDio()
      : super(BaseOptions(
          baseUrl: dotenv.env["URL_BASE"] ?? "",
          connectTimeout: const Duration(seconds: 10),
          receiveTimeout: const Duration(seconds: 60),
        )) {
    _authInterceptor = AuthInterceptor(dio: this);
  }

  CustomDio auth() {
    interceptors.clear();
    interceptors.add(_authInterceptor);
    interceptors.add(LogInterceptor(
      requestBody: true,
      responseBody: true,
      requestHeader: true,
    ));
    return this;
  }

  CustomDio unauth() {
    interceptors.clear();
    interceptors.add(LogInterceptor(
      requestBody: true,
      responseBody: true,
      requestHeader: true,
    ));
    return this;
  }
}
