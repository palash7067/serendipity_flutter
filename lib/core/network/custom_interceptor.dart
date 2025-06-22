import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

// Any DioException thrown by CustomInterceptor will be caught, and a generic exception message is provided.
// We could further customize this if needed based on the error type.

class CustomInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // Handle custom request logic if needed (e.g., adding headers)
    debugPrint("${options.baseUrl}${options.path} Payload ${options.data != null ? json.encode(options.data) : json.encode(options.queryParameters)}");
    handler.next(options); // Continue with the request
  }

  @override
  void onResponse(
    Response<dynamic> response,
    ResponseInterceptorHandler handler,
  ) {
    // Check if the response status code is successful
    debugPrint("${response.requestOptions.baseUrl}${response.requestOptions.path} Response ${response.data}");
    if (response.statusCode != null &&
        response.statusCode! >= 200 &&
        response.statusCode! < 300) {
      handler.next(response); // Pass the successful response along
    } else {
      // For non-200 statuses, treat as an error and throw DioException
      handler.reject(
        DioException(
          requestOptions: response.requestOptions,
          response: response,
          error: 'Non-successful status code: ${response.statusCode}',
          type: DioExceptionType.badResponse,
        ),
      );
    }
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (err.response != null) {
      // Handle HTTP errors with a response (e.g., 4xx, 5xx errors)
      final message = err.response?.statusMessage ?? 'Unknown error';
      handler.reject(
        DioException(
          requestOptions: err.requestOptions,
          response: err.response,
          error: message,
          type: DioExceptionType.badResponse,
        ),
      );
    } else if (err.type == DioExceptionType.connectionTimeout ||
        err.type == DioExceptionType.receiveTimeout) {
      // Handle timeout errors
      handler.reject(
        DioException(
          requestOptions: err.requestOptions,
          error: 'Request timed out',
          type: DioExceptionType.connectionTimeout,
        ),
      );
    } else {
      // Other network errors (e.g., no internet connection)
      handler.reject(
        DioException(
          requestOptions: err.requestOptions,
          error: 'No internet connection or other error',
        ),
      );
    }
  }
}
