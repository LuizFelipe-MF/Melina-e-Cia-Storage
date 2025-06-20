import 'package:dio/dio.dart';
import 'package:melina/app/core/global/global_context.dart';
import 'package:melina/app/core/rest_client/custom_dio.dart';

class ConnectionInterceptor extends Interceptor {
  final CustomDio dio;

  ConnectionInterceptor({required this.dio});

  @override
  Future<void> onError(
      DioException err, ErrorInterceptorHandler handler) async {
    if (err.type == DioExceptionType.unknown ||
        err.type == DioExceptionType.connectionTimeout) {
      GlobalContext.i.isWithoutInternet();
      handler.next(err);
    } else {
      handler.next(err);
    }
  }
}
