import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:serendipity/features/auth/domain/usecases/login_usecase.dart';

import '../../../core/mocks/mock_classes.dart';

void main(){
  late MockAuthRepository mockAuthRepository;
  late LoginUsecase loginUsecase;

  setUp((){
    mockAuthRepository = MockAuthRepository();
    loginUsecase = LoginUsecase(mockAuthRepository);
  });


  test('Should return data correctly from auth repository', ()async{
    //Arrange
    final mockData = {'success': true};
    when(() => mockAuthRepository.login(any(), any())).thenAnswer((_)async => mockData);

    //Act
    final result = await loginUsecase.call(email: 'jknknewjk', password: 'jnwe');

    //Assert
    expect(result, mockData);
  });
}