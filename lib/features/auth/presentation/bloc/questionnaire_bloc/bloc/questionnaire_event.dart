import 'package:serendipity/features/auth/data/models/questionnaire_model/questionnaire_model.dart';

sealed class QuestionnaireEvent {}

class FetchQuestionnaire extends QuestionnaireEvent{}

class UpdateQuestion extends QuestionnaireEvent{
  final QuestionnaireModel questionnaire;
  UpdateQuestion(this.questionnaire);
}

class QuestionnaireAnswer extends QuestionnaireEvent{
  final int questionId;
  final int optionId;

  QuestionnaireAnswer(this.optionId, this.questionId);
}

