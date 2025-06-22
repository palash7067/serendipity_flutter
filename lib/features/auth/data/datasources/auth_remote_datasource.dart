// The data source is where we interact directly with the API.
// It’s separated from the repository to follow the Single Responsibility Principle (SRP),
// allowing us to handle API calls without mixing business logic.

import 'package:serendipity/features/auth/data/models/response_models/questionnaire_response_model/questionnaire_response_model.dart';

abstract class AuthRemoteDatasource{
  Future<Map<String, dynamic>> login(String email, String password);

  Future<QuestionnaireResponseModel> getQuestionnaire();

  Future<Map<String, dynamic>> questionnaireAnswer(int questionId, int optionId);
}