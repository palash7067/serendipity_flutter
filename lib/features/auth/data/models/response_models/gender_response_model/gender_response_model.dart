import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:serendipity/features/auth/data/models/gender_model/gender_model.dart';
part 'gender_response_model.freezed.dart';
part 'gender_response_model.g.dart';

@freezed
sealed class GenderResponseModel with _$GenderResponseModel{
  const factory GenderResponseModel({
    @JsonKey(name: 'data') List<GenderModel>? genders,
  }) = _GenderResponseModel;


  factory GenderResponseModel.fromJson(Map<String, dynamic> json) => _$GenderResponseModelFromJson(json);
}