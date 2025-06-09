import 'package:bloc_test/core/util/logger.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class DioModule {
  @lazySingleton
  Dio dio() {
    final options = BaseOptions(
      baseUrl: 'https://auth.demo.sitedeck.ca/api/auth',
      headers: appHeader,
      connectTimeout: const Duration(seconds: 20),
      receiveTimeout: const Duration(seconds: 20),
    );
    final dio = Dio(options);
    dio.interceptors.add(DioInterceptor());
    return dio;
  }
}

class  DioInterceptor extends Interceptor {
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    infoLog(response.data.toString());
    return handler.next(response);
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    print(options.data);
    return handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    return handler.next(err);
  }
}

Map<String, dynamic> appHeader={
  'Accept': 'application/json',
  'device-type': 'mobile',
  'device-id': "1232323232"
};
