import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:serendipity/core/utils/constants.dart';
import 'package:serendipity/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:serendipity/features/auth/data/datasources/auth_remote_datasource_impl.dart';

import '../../../core/mocks/mock_classes.dart';

void main(){
  group('Auth Remote Data Source Impl', (){
    late MockDioClient mockDioClient;
    late AuthRemoteDatasourceImpl authRemoteDatasource;

    setUp((){
      mockDioClient = MockDioClient();
      authRemoteDatasource = AuthRemoteDatasourceImpl(mockDioClient);
    });


    test('should return data correctly from login API', ()async{

      //Arrange
      final mockData = {'success': true};
      when(() => mockDioClient.post(any(), data: any(named: 'data'))).thenAnswer((_)async=> mockData);

      //act
      final response = await authRemoteDatasource.login('palash@gmail.com', '123456');

      // assert
      expect(response, mockData);

    });

    test('should throw error if receive status code other than 200, 300', ()async{
      //Arrange
      when(() => mockDioClient.post(any(), data: any(named: 'data'))).thenThrow(Exception('Login Failed'));

      //Act 
      final result =  authRemoteDatasource.login('dskjd', 'hjnadjs');

      //Assert
      expect(() => result, throwsA(isA<Exception>()));
    });

    test('Should return success response from Register API', ()async{
      //Arrange
      final mockData = {'success': true};
      when(() => mockDioClient.post(any(), data: any(named: 'data'))).thenAnswer((_)async=> mockData);

      //act
      final data = await authRemoteDatasource.register('dfdsjds', 'dsjkddskdksj');

      //Assert
      expect(data, mockData);

    });

    test('Should throw exception if API call fails', (){
      when(() => mockDioClient.post(any(), data: any(named: 'data'))).thenThrow(Exception('Register Failed'));

      final data = authRemoteDatasource.register('test', 'test');
      expect(()=>data, throwsA(isA<Exception>()));
    });
  });
}