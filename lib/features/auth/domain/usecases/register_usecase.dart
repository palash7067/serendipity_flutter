import 'package:injectable/injectable.dart';
import 'package:serendipity/features/auth/domain/repositories/auth_repository.dart';

@Injectable()
class RegisterUsecase {
  final AuthRepository authRepository;
  RegisterUsecase(this.authRepository);

  Future<Map<String, dynamic>> call(String email, String password)async{
    return await authRepository.register(email, password);
  }


}