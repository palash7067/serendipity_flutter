import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'custom_interceptor.dart';
import 'dio_client.dart';

// With @Injectable alone, injectable will use lazy singleton registration by default
@Injectable(as: DioClient)
class DioHttpClient implements DioClient {
  DioHttpClient(this._dio) {
    _dio.interceptors.add(CustomInterceptor());
  }

  final Dio _dio;

  @override
  Future<Map<String, dynamic>> get(
    String path, {
    Map<String, dynamic>? queryParameters,
  }) async {
    final response = await _dio.get<dynamic>(
      path,
      queryParameters: queryParameters,
      options: Options(headers: {
        'Authorization': 'Token e3a35ab8c8bd70953c4b5993aea93b8d537be348'
      })
    );
    return response.data as Map<String, dynamic>;
  }

  @override
  Future<Map<String, dynamic>> post(
    String path, {
    Map<String, dynamic>? data,
  }) async {
    
    final response = await _dio.post<dynamic>(
      path,
      data: data,
    );
    return response.data as Map<String, dynamic>;
  }
}
