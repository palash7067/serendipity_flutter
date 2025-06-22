

import 'package:dio/dio.dart';
import 'package:mocktail/mocktail.dart';
import 'package:serendipity/core/network/dio_client.dart';
import 'package:serendipity/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:serendipity/features/auth/domain/repositories/auth_repository.dart';
import 'package:serendipity/features/auth/domain/usecases/get_questionnaire_usecase.dart';
import 'package:serendipity/features/auth/domain/usecases/login_usecase.dart';
import 'package:serendipity/features/auth/presentation/bloc/login_bloc/bloc/login_bloc.dart';
import 'package:serendipity/features/auth/presentation/bloc/questionnaire_bloc/bloc/questionnaire_bloc.dart';

class MockDio extends Mock implements Dio{
  @override
  Interceptors get interceptors => Interceptors();
}

class MockDioClient extends Mock implements DioClient{}

class MockAuthRemoteDatasource extends Mock implements AuthRemoteDatasource{}

class MockAuthRepository extends Mock implements AuthRepository{}

class MockLoginUseCase extends Mock implements LoginUsecase{}

class MockGetQuestionnaireUsecase extends Mock implements GetQuestionnaireUsecase{}

class MockLoginBloc extends Mock implements LoginBloc{}

class MockQuestionnaireBloc extends Mock implements QuestionnaireBloc{}