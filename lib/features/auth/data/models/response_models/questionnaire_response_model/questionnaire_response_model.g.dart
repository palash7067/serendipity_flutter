// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'questionnaire_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_QuestionnaireResponseModel _$QuestionnaireResponseModelFromJson(
  Map<String, dynamic> json,
) => _QuestionnaireResponseModel(
  questionnaires: (json['data'] as List<dynamic>?)
      ?.map((e) => QuestionnaireModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$QuestionnaireResponseModelToJson(
  _QuestionnaireResponseModel instance,
) => <String, dynamic>{'data': instance.questionnaires};
