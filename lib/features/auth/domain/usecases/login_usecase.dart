import 'package:injectable/injectable.dart';
import 'package:serendipity/features/auth/domain/repositories/auth_repository.dart';



// Use Case are optional, you can just use repository, but it enhances modularity

// Why use a Use Case class: By creating use cases, we centralize the app’s logic
// (e.g., saving, retrieving, deleting, and syncing notes) in a way that’s easy to
// reuse and change independently of data handling details (permotes Decoupling and Reusability)

// use cases represent specific business logic operations, typically as classes with a single responsibility
// Each class should handle only one specific operation. Implement it with a single public method, typically called execute or call
// FetchMovieDetails, AddFavoriteMovie, DeleteUserAccount

@Injectable()
class LoginUsecase {
  final AuthRepository authRepository;
  LoginUsecase(this.authRepository);

  Future<Map<String, dynamic>> call({required String email, required String password})async{
    return await authRepository.login(email, password);
  }
}