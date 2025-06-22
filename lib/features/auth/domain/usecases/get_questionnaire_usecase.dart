import 'package:injectable/injectable.dart';
import 'package:serendipity/features/auth/data/models/response_models/questionnaire_response_model/questionnaire_response_model.dart';
import 'package:serendipity/features/auth/domain/repositories/auth_repository.dart';

@Injectable()
class GetQuestionnaireUsecase {
  final AuthRepository authRepository;
  const GetQuestionnaireUsecase(this.authRepository);

  Future<QuestionnaireResponseModel> call()async{
    return await authRepository.getQuestionnaire();
  }
}