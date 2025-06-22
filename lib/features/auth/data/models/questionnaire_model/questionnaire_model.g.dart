// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'questionnaire_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_QuestionnaireModel _$QuestionnaireModelFromJson(Map<String, dynamic> json) =>
    _QuestionnaireModel(
      id: (json['id'] as num?)?.toInt(),
      question: json['question'] as String?,
      options: (json['options'] as List<dynamic>?)
          ?.map((e) => OptionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      selectedOption: json['selected_option'] == null
          ? null
          : OptionModel.fromJson(
              json['selected_option'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$QuestionnaireModelToJson(_QuestionnaireModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'question': instance.question,
      'options': instance.options,
      'selected_option': instance.selectedOption,
    };
