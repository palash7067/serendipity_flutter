import 'package:serendipity/features/auth/data/models/questionnaire_model/questionnaire_model.dart';

sealed class QuestionnaireState {}

class QuestionnaireInitial extends QuestionnaireState{}

class QuestionnaireLoading extends QuestionnaireState{}

class QuestionnaireSuccess extends QuestionnaireState{
  final List<QuestionnaireModel> questionnaires;
  QuestionnaireSuccess(this.questionnaires);
}

class QuestionnaireError extends QuestionnaireState{
  final String message;
  QuestionnaireError(this.message);
}

class QuestionnaireAnswerInitial extends QuestionnaireState{}

class QuestionnaireAnswerLoading extends QuestionnaireState{}

class QuestionnaireAnswerSuccess extends QuestionnaireState{
  final Map<String, dynamic> data;
  QuestionnaireAnswerSuccess(this.data);
}

class QuestionnaireAnswerError extends QuestionnaireState{
  final String message;
  QuestionnaireAnswerError(this.message);
}
