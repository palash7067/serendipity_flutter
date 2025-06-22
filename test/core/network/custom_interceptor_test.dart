import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:serendipity/core/network/custom_interceptor.dart';

class MockErrorInterceptorHandler extends Mock implements ErrorInterceptorHandler {}

void main(){
  group('Custom Interceptor', (){
    late CustomInterceptor interceptor;
    late RequestOptions options;

    setUp((){
      interceptor = CustomInterceptor();
      options = RequestOptions(path: '/test');
    });



    test('Should pass response if status code is 200', () async {
      final response = Response(
        requestOptions: options,
        statusCode: 200
      );

      final handler = ResponseInterceptorHandler();

      expect(() => interceptor.onResponse(response, handler), returnsNormally);
      
    });


    test('Should pass error if status code is 400', ()async{
      final response = Response(requestOptions: options, statusCode: 400, statusMessage: 'Bad Response');
      final exception = DioException(requestOptions: options, response: response, type: DioExceptionType.badResponse);
      final mockHandler = MockErrorInterceptorHandler();

      expect(()=> interceptor.onError(exception, mockHandler), returnsNormally);

    });

  });
}