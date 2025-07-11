import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'custom_interceptor.dart';
import 'dio_client.dart';


// With @Injectable alone, injectable will use lazy singleton registration by default
@Injectable(as: DioClient)
class DioHttpClient implements DioClient {
  DioHttpClient(this._dio);

  final Dio _dio;

  @override
  Future<Map<String, dynamic>> get(
    String path, {
    Map<String, dynamic>? queryParameters,
  }) async {
    try{
      final response = await _dio.get<dynamic>(
      path,
      queryParameters: queryParameters,
      options: Options(headers: {
        'Authorization': 'Token e3a35ab8c8bd70953c4b5993aea93b8d537be348'
      })
    );
    _handleStatusCode(response);
    return response.data as Map<String, dynamic>;
    }on DioException catch(e){
      throw _handleDioError(e);
    }
  
  }

  @override
  Future<Map<String, dynamic>> post(
    String path, {
    Map<String, dynamic>? data,
  }) async {
    try{
      final response = await _dio.post<dynamic>(
      path,
      data: data,
      );
      _handleStatusCode(response);
      return response.data as Map<String, dynamic>;
    }on DioException catch(e){
      throw _handleDioError(e);
    }
    
  }


  void _handleStatusCode(Response<dynamic> response) {
    final status = response.statusCode ?? 0;
    if (status < 200 || status >= 300) {
      throw Exception(
        'HTTP Error: ${status} - ${response.statusMessage ?? 'No message'}',
      );
    }
  }

  Exception _handleDioError(DioException error) {
    if (error.type == DioExceptionType.connectionTimeout ||
        error.type == DioExceptionType.sendTimeout ||
        error.type == DioExceptionType.receiveTimeout) {
      return Exception("Request timed out");
    } else if (error.type == DioExceptionType.badResponse) {
      return Exception("Server error: ${error.response?.statusCode} ${error.response?.statusMessage}");
    } else if (error.type == DioExceptionType.cancel) {
      return Exception("Request cancelled");
    } else {
      return Exception("Unexpected error: ${error.message}");
    }
  }
}
