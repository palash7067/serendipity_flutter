// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gender_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GenderResponseModel _$GenderResponseModelFromJson(Map<String, dynamic> json) =>
    _GenderResponseModel(
      genders: (json['data'] as List<dynamic>?)
          ?.map((e) => GenderModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GenderResponseModelToJson(
  _GenderResponseModel instance,
) => <String, dynamic>{'data': instance.genders};
