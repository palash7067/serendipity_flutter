import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:serendipity/features/auth/data/models/questionnaire_model/questionnaire_model.dart';

part 'questionnaire_response_model.freezed.dart';
part 'questionnaire_response_model.g.dart';

@freezed
sealed class QuestionnaireResponseModel with _$QuestionnaireResponseModel{
  const factory QuestionnaireResponseModel({
    @JsonKey(name: 'data') List<QuestionnaireModel>? questionnaires,
  }) = _QuestionnaireResponseModel;

  factory QuestionnaireResponseModel.fromJson(Map<String, dynamic> json) => _$QuestionnaireResponseModelFromJson(json); 
}