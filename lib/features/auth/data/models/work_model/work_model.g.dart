// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WorkModel _$WorkModelFromJson(Map<String, dynamic> json) => _WorkModel(
  id: (json['id'] as num?)?.toInt(),
  jobTitle: json['job_title'] as String?,
  company: json['company'] as String?,
);

Map<String, dynamic> _$WorkModelToJson(_WorkModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'job_title': instance.jobTitle,
      'company': instance.company,
    };
