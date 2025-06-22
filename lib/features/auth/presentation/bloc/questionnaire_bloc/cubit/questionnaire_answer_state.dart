import 'package:freezed_annotation/freezed_annotation.dart';

part 'questionnaire_answer_state.freezed.dart';

@freezed
sealed class QuestionnaireAnswerState with _$QuestionnaireAnswerState{
  const factory QuestionnaireAnswerState.initial() = QuestionnaireAnswerInitial;
  const factory QuestionnaireAnswerState.loading() = QuestionnaireAnswerLoading;
  const factory QuestionnaireAnswerState.success(Map<String, dynamic> data) = QuestionnaireAnswerSuccess;
  const factory QuestionnaireAnswerState.error(String message) = QuestionnaireAnswerError;
}