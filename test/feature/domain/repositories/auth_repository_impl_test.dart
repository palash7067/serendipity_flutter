import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:serendipity/features/auth/data/repositories/auth_repository_impl.dart';

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
  });
}