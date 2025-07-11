import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:serendipity/features/auth/data/models/response_models/gender_response_model/gender_response_model.dart';
import 'package:serendipity/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:serendipity/features/auth/domain/repositories/auth_repository.dart';

import '../../../core/mocks/mock_classes.dart';

void main(){
  group('Auth Repository Impl', (){
    late MockAuthRemoteDatasource mockAuthRemoteDatasource;
    late AuthRepositoryImpl authRepositoryImpl;

    setUp((){
      mockAuthRemoteDatasource = MockAuthRemoteDatasource();
      authRepositoryImpl = AuthRepositoryImpl(mockAuthRemoteDatasource);
    });


    test('Should return data correctly from datasource', ()async{
      
      //Arrange
      final mockData = {'success': true};
      when(() => mockAuthRemoteDatasource.login(any(), any())).thenAnswer((_)async=> mockData);

      //act
      final result = await authRepositoryImpl.login('kdskds', 'jkdsjksd');

      //assert
      expect(result, mockData);
    });

    test('Should throw error from datasource', ()async{
      //Arrange
      when(() => mockAuthRemoteDatasource.login(any(), any())).thenThrow((_)async=> Exception('Login Failed'));

      //Act
      final data = authRepositoryImpl.login('jkdksjds', 'jkdskj');

      //Assert
      expect(()=> data, throwsA(isA<Exception>()));
    });

    test('Should return data coorectly if Regsiter API success', ()async{
    final mockData = {'success': true};
    when(() => mockAuthRemoteDatasource.register(any(), any())).thenAnswer((_)async=> mockData);
    final data = await authRepositoryImpl.register('test', 'test');

    expect(data, mockData);
  });

  test('Should throw exception if Register API call fails', (){
    when(() => mockAuthRemoteDatasource.register(any(), any())).thenThrow(Exception('Registration Failed'));

    final data = authRepositoryImpl.register('test', 'test');

    expect(data, throwsA(isA<Exception>()));

  });


  test('Should return GenderResponseModel if API success', ()async{
    Map<String, dynamic> mockData = {
        'data': [{
          'id': 1,
          'name': 'Male'
        }]
      };

      final mockModel = GenderResponseModel.fromJson(mockData);


      when(() => mockAuthRemoteDatasource.getGenders()).thenAnswer((_)async=>mockModel);

      final data = await authRepositoryImpl.getGenders();

      expect(data.genders?.first.id, mockModel.genders?.first.id);
  });

  test("Should throw an error if API fails", (){
    when(() => mockAuthRemoteDatasource.getGenders()).thenThrow(Exception("Error Fetching Data"));

    final data = authRepositoryImpl.getGenders();

    expect(data, throwsA(isA<Exception>()));
  });
  });

  
}