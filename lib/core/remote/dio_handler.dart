import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_jago_commerce/common/constants/constant.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'api_interceptor.dart';

class DioHandler {
  late SharedPreferences sharedPreferences;

  DioHandler({
    required this.sharedPreferences,
  });

  Dio get dio => _getDio();

  Dio _getDio() {
    BaseOptions options = BaseOptions(
      baseUrl: Constant.baseUrl,
      validateStatus: (status) {
        if (status == null) {
          return false;
        }
        return status >= 200 && status < 300 || status == 422;
      },
    );
    final dio = Dio(options);
    dio.interceptors.add(ApiInterceptor(sharedPreferences: sharedPreferences));

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
    return post(path,
        data: data,
        queryParameters: queryParameters,
        options: isEncoded
            ? Options(contentType: Headers.formUrlEncodedContentType)
            : Options(headers: {
                HttpHeaders.acceptHeader: 'application/json',
                HttpHeaders.contentTypeHeader: 'application/json',
              }),
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress);
  }
}