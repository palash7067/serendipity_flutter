import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'injection.config.dart';

final GetIt getIt = GetIt.instance;

// We use an @module with a @lazySingleton-annotated Dio provider,
// so it’s registered with GetIt and available for injection wherever needed.
// Use @module to register external dependencies
// (e.g., Dio, SharedPreferences, FirebaseAuth, GoogleSignIn, AnalyticsService, Database)
// that can’t be annotated directly with @Injectable. It allows configuration and initialization of
// third-party instances for dependency injection.

@module
abstract class RegisterModule {
  @lazySingleton
  Dio get dio => Dio(BaseOptions(baseUrl: 'http://10.0.2.2:8000')); // Basic Dio instance
}

// code generator :  flutter pub run build_runner build
// We are setting up GetIt as our dependency injection container.
// @injectableInit will auto-generate dependency injection code.
@InjectableInit()
Future<void> configureDependencies() async => getIt.init();
