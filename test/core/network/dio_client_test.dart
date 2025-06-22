
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:serendipity/core/network/dio_client_impl.dart';

import '../mocks/mock_classes.dart';

void main(){

group('Dio Client Impl', (){
  late MockDio mockDio;
  late DioHttpClient dioHttpClient;

  setUp((){
    mockDio = MockDio();
    dioHttpClient = DioHttpClient(mockDio);
  });

  final successResponse = Response(requestOptions: RequestOptions(path: '/test'), statusCode: 200, data: {'success' : true});
  final errorResponse = Response(requestOptions: RequestOptions(path: '/test'), statusCode: 400, data: {'success' : false});

  test('Should return success response if status code is 200 in GET API', ()async{
    //Arrange
    when(() => mockDio.get(any(), queryParameters: any(named: 'queryParameters'), options: any(named: 'options'))).thenAnswer((_)async=> successResponse);

    //Act
    final data = await dioHttpClient.get('/test');

    //Assert
    expect(data, successResponse.data);

  });

  test('Should throw error is status code is 400', ()async{
    //Arrange
    when(() => mockDio.get(any(), queryParameters: any(named: 'queryParameters'), options: any(named: 'options'))).thenThrow(DioException(requestOptions: errorResponse.requestOptions, response: errorResponse, type: DioExceptionType.badResponse, error: 'Bad Request'));

    //Act
    final data = dioHttpClient.get('/test');

    //Assert
    expect(() => data, throwsA(isA<DioException>()));
  });


  test('Should return data correct if status code is 200 in POST Req', ()async{
    when(() => mockDio.post(any(), data: any(named: 'data'))).thenAnswer((_)async=> successResponse);

    final data = await dioHttpClient.post('/test');

    expect(data, successResponse.data);
  });

  test('Should throw error when status code is 400 in POST Req', (){
    final dioError = DioException(requestOptions: errorResponse.requestOptions, response: errorResponse);
    when(() => mockDio.post(any(), data: any(named: 'data'))).thenThrow(dioError);

    final data = dioHttpClient.post('/test');

    expect(() => data, throwsA(isA<DioException>()));
  });

});

}