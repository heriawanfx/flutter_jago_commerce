import 'dart:io';

import 'package:dio/dio.dart';
import '../../common/constants/constant.dart';

import 'api_interceptor.dart';

class DioHandler {
  final ApiInterceptor apiInterceptor;

  DioHandler({
    required this.apiInterceptor,
  });

  Dio get dio => _getDio();

  Dio _getDio() {
    BaseOptions options = BaseOptions(
      baseUrl: Constant.baseUrl,
      followRedirects: false,
      validateStatus: (status) => true,
    );
    final dio = Dio(options);
    dio.interceptors.add(apiInterceptor);

    return dio;
  }
}

extension DioExtension on Dio {
  Future<Response<T>> postEncoded<T>(
    String path, {
    Map<String, dynamic>? data,
    bool isEncoded = true,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) {
    return post<T>(path,
        data: data,
        queryParameters: queryParameters,
        options: isEncoded
            ? Options(
                contentType: Headers.formUrlEncodedContentType,
              )
            : Options(
                headers: {
                  HttpHeaders.acceptHeader: Headers.jsonContentType,
                  HttpHeaders.contentTypeHeader: Headers.jsonContentType,
                },
              ),
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress);
  }
}
