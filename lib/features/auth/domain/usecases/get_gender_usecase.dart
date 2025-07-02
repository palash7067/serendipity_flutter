import 'package:injectable/injectable.dart';
import 'package:serendipity/features/auth/data/models/response_models/gender_response_model/gender_response_model.dart';
import 'package:serendipity/features/auth/domain/repositories/auth_repository.dart';

@Injectable()
class GetGenderUsecase {
  final AuthRepository authRepository;
  GetGenderUsecase(this.authRepository);

  Future<GenderResponseModel> call()async{
    final data = await authRepository.getGenders();
    return data;
  }
}