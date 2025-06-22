
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:serendipity/features/auth/domain/usecases/register_usecase.dart';
import 'package:serendipity/features/auth/presentation/bloc/login_bloc/bloc/login_state.dart';
import 'package:serendipity/features/auth/presentation/bloc/register_bloc/bloc/register_bloc.dart';
import 'package:serendipity/features/auth/presentation/bloc/register_bloc/bloc/register_event.dart';
import 'package:serendipity/features/auth/presentation/bloc/register_bloc/bloc/register_state.dart';

class MockRegisterUsecase extends Mock implements RegisterUsecase{}

void main(){
  group('Register Bloc', (){
    late MockRegisterUsecase mockRegisterUsecase;
    late RegisterBloc registerBloc;

    setUp((){
      mockRegisterUsecase = MockRegisterUsecase();
      registerBloc = RegisterBloc(mockRegisterUsecase);
    });


    blocTest<RegisterBloc, RegisterState>('Should emit [loading, success] when api calls succeed', 
    build: (){
      final mockData = {'success': true};
      when(() => mockRegisterUsecase.call(any(), any())).thenAnswer((_)async=> mockData);
      return registerBloc;
    },

    act: (bloc){
      bloc.add(OnRegister('test', 'test'));
    },

    expect: () => [
      isA<RegisterLoading>(),
      isA<RegisterSuccess>()
    ],
    
    );


    blocTest<RegisterBloc, RegisterState>('Should emit [loading, error] if API call fails', 
    build: (){
      when(() => mockRegisterUsecase.call(any(), any())).thenThrow(Exception('Register Failed'));
      return registerBloc;
    },
    act: (bloc){
      bloc.add(OnRegister('test', 'test'));
    },
    expect: () => [
      isA<RegisterLoading>(),
      isA<RegisterError>()
    ],
    );
  });
}