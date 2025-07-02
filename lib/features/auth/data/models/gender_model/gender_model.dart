import 'package:freezed_annotation/freezed_annotation.dart';
part 'gender_model.freezed.dart';
part 'gender_model.g.dart';

@freezed
sealed class GenderModel with _$GenderModel {
  const factory GenderModel({
    int? id,
    String? name,
  }) = _GenderModel;

  factory GenderModel.fromJson(Map<String, dynamic> json) => _$GenderModelFromJson(json);
  
}