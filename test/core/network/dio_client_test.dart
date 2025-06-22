import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:serendipity/core/network/dio_client.dart';
import 'package:serendipity/core/network/dio_client_impl.dart';

import '../mocks/mock_classes.dart';


void main(){
  group('Dio Client', (){
    late MockDio mockDio;
    late DioHttpClient dioClient;


    setUp((){
      mockDio = MockDio();
      dioClient = DioHttpClient(mockDio);
    });

    test('Should return data from GET method', ()async{

      //Arrange
      final mockData = {'success': true};
      when(() => mockDio.get<dynamic>(any(), queryParameters: any(named: 'queryParameters'), options: any(named: 'options')))
  .thenAnswer((_) async => Response(requestOptions: RequestOptions(path: '/test'), data: mockData));

      //act
      final response = await dioClient.get('/test');

      //Assert
      expect(response, mockData);

    });
  });
}