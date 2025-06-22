import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:serendipity/features/auth/presentation/bloc/login_bloc/bloc/login_bloc.dart';
import 'package:serendipity/features/auth/presentation/bloc/login_bloc/bloc/login_event.dart';
import 'package:serendipity/features/auth/presentation/bloc/login_bloc/bloc/login_state.dart';

import '../../core/mocks/mock_classes.dart';

void main(){
  late MockLoginUseCase mockLoginUseCase;
  late LoginBloc loginBloc;

  setUp((){
    mockLoginUseCase = MockLoginUseCase();
    loginBloc = LoginBloc(mockLoginUseCase);
  });

  final mockData = {'success': true};


  blocTest<LoginBloc, LoginState>('should emit [loading, success] when data is post successfully', 
  build: (){
    
    when(() => mockLoginUseCase.call(email: any(named: 'email'), password: any(named: 'password'))).thenAnswer((_) async => mockData);
    return loginBloc;
  },
  act: (bloc) {
    bloc.add(LoginInitiated("jddskjdskl", "kldskmds"));
  },
  expect:() => [
    isA<LoginLoading>(),
    isA<LoginSuccess>(),
  ],
  );


  blocTest<LoginBloc, LoginState>('should emit [loading, error] when there is an exception',
   build: (){
    when(() => mockLoginUseCase.call(email: any(named: 'email'), password: any(named: 'password'))).thenThrow(Exception('Login Failed'));
        return loginBloc;

  },
  act:(bloc) {
    bloc.add(LoginInitiated('ncxkxckl', 'dshjd'));
  },
  expect: () => [
    isA<LoginLoading>(),
    isA<LoginError>(),
  ],
  );
}