import 'package:flutter/foundation.dart';
import 'package:serendipity/features/auth/data/models/questionnaire_model/questionnaire_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:serendipity/features/auth/presentation/bloc/questionnaire_bloc/bloc/questionnaire_event.dart';
part 'questionnare_state.freezed.dart';


@freezed
sealed class QuestionnaireState with _$QuestionnaireState{
  const factory QuestionnaireState.initial() = QuestionnaireInitial;
  const factory QuestionnaireState.loading() = QuestionnaireLoading;
  const factory QuestionnaireState.success(List<QuestionnaireModel> questionnaires) = QuestionnaireSuccess;
  const factory QuestionnaireState.error(String message) = QuestionnaireError;
}