import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:serendipity/features/auth/domain/repositories/auth_repository.dart';
import 'package:serendipity/features/auth/domain/usecases/register_usecase.dart';

class MockAuthRepository extends Mock implements AuthRepository{}

void main(){
  group('Register Usecase', (){
    late MockAuthRepository mockAuthRepository;
    late RegisterUsecase registerUsecase;

    setUp((){
      mockAuthRepository = MockAuthRepository();
      registerUsecase = RegisterUsecase(mockAuthRepository);
    });

    test('Should return data correctly if API call success', ()async{
      final mockData = {'success' : true};
      when(() => mockAuthRepository.register(any(), any())).thenAnswer((_)async=> mockData);
      final data = await registerUsecase.call('test', 'test');
      expect(data, mockData);
    });

    test('Should throw exception if API call fails', (){
      when(() => mockAuthRepository.register(any(), any())).thenThrow(Exception('Registration Failed'));

      final data = registerUsecase.call('test', 'test');

      expect(() => data, throwsA(isA<Exception>()));
    });


  });
}