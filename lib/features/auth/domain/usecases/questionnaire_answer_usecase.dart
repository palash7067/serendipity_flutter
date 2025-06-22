

import 'package:injectable/injectable.dart';
import 'package:serendipity/features/auth/domain/repositories/auth_repository.dart';

@Injectable()
class QuestionnaireAnswerUsecase {
  final AuthRepository authRepository;
  QuestionnaireAnswerUsecase(this.authRepository);

  Future<Map<String, dynamic>> call(int questionId, int optionId)async {
    final data = await authRepository.questionnaireAnswer(questionId, optionId);
    return data;
  }


}