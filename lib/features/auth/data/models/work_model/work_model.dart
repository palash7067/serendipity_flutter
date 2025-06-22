import 'package:freezed_annotation/freezed_annotation.dart';

part 'work_model.freezed.dart';
part 'work_model.g.dart';

@freezed
sealed class WorkModel with _$WorkModel{
  const factory WorkModel({
    int? id,
    @JsonKey(name: 'job_title') String? jobTitle,
    String? company,
  }) = _WorkModel;

  factory WorkModel.fromJson(Map<String, dynamic> json) => _$WorkModelFromJson(json);
}