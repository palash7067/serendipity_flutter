// The domain layer will contain entities and abstract definitions of repositories.
// This layer is independent of any other layer and follows the Dependency Inversion Principle (DIP).
// The domain layer should not know how data is fetched; it only defines what data and operations are needed.

// DIP : principle that encourages the use of abstractions over concrete implementations
// high level modules should not depend on low level modules; both should depend on abstractions

// My view : Basically to follow the DIP principle we use Domain layer in between of Data and Presentation layer
// just to avoid concrete implementation of data layer into presentation layer just
// like we do for repository and repositoryImpl , we use repository in presentation only

// Benfit of using Abstractions
// Loose Coupling: High-level components rely on interfaces, not concrete implementations, allowing flexible changes.
// Testability: Abstractions enable easy mocking, supporting isolated and fast tests.
// Extensibility: New features can be added by implementing interfaces without changing existing code.

import 'package:serendipity/features/auth/data/models/response_models/gender_response_model/gender_response_model.dart';
import 'package:serendipity/features/auth/data/models/response_models/questionnaire_response_model/questionnaire_response_model.dart';

abstract class AuthRepository {
  Future<Map<String, dynamic>> login(String email, String password);
  Future<Map<String, dynamic>> register(String email, String password);
  Future<QuestionnaireResponseModel> getQuestionnaire();
  Future<Map<String, dynamic>> questionnaireAnswer(int questionId, int optionId);
  Future<GenderResponseModel> getGenders();
}