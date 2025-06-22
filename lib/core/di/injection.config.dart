// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:serendipity/core/di/injection.dart' as _i420;
import 'package:serendipity/core/network/dio_client.dart' as _i39;
import 'package:serendipity/core/network/dio_client_impl.dart' as _i433;
import 'package:serendipity/features/auth/data/datasources/auth_remote_datasource.dart'
    as _i783;
import 'package:serendipity/features/auth/data/datasources/auth_remote_datasource_impl.dart'
    as _i128;
import 'package:serendipity/features/auth/data/repositories/auth_repository_impl.dart'
    as _i982;
import 'package:serendipity/features/auth/domain/repositories/auth_repository.dart'
    as _i48;
import 'package:serendipity/features/auth/domain/usecases/get_questionnaire_usecase.dart'
    as _i408;
import 'package:serendipity/features/auth/domain/usecases/login_usecase.dart'
    as _i299;
import 'package:serendipity/features/auth/domain/usecases/questionnaire_answer_usecase.dart'
    as _i1047;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final registerModule = _$RegisterModule();
    gh.lazySingleton<_i361.Dio>(() => registerModule.dio);
    gh.factory<_i39.DioClient>(() => _i433.DioHttpClient(gh<_i361.Dio>()));
    gh.factory<_i783.AuthRemoteDatasource>(
      () => _i128.AuthRemoteDatasourceImpl(gh<_i39.DioClient>()),
    );
    gh.factory<_i48.AuthRepository>(
      () => _i982.AuthRepositoryImpl(gh<_i783.AuthRemoteDatasource>()),
    );
    gh.factory<_i299.LoginUsecase>(
      () => _i299.LoginUsecase(gh<_i48.AuthRepository>()),
    );
    gh.factory<_i408.GetQuestionnaireUsecase>(
      () => _i408.GetQuestionnaireUsecase(gh<_i48.AuthRepository>()),
    );
    gh.factory<_i1047.QuestionnaireAnswerUsecase>(
      () => _i1047.QuestionnaireAnswerUsecase(gh<_i48.AuthRepository>()),
    );
    return this;
  }
}

class _$RegisterModule extends _i420.RegisterModule {}
