// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'option_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OptionModel _$OptionModelFromJson(Map<String, dynamic> json) => _OptionModel(
  id: (json['id'] as num?)?.toInt(),
  optionName: json['option_name'] as String?,
);

Map<String, dynamic> _$OptionModelToJson(_OptionModel instance) =>
    <String, dynamic>{'id': instance.id, 'option_name': instance.optionName};
