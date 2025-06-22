// following Dependency Inversion Principle
abstract class DioClient {
  Future<Map<String, dynamic>> get(
    String path, {
    Map<String, dynamic>? queryParameters,
  });
  Future<Map<String, dynamic>> post(
    String path, {
    Map<String, dynamic>? data,
  });
}
