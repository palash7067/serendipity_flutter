
import 'package:freezed_annotation/freezed_annotation.dart';
part 'option_model.freezed.dart';
part 'option_model.g.dart';

@freezed
sealed class OptionModel with _$OptionModel{
  const factory OptionModel({
    int? id,
    @JsonKey(name: 'option_name') String? optionName,
  }) = _OptionModel;

  factory OptionModel.fromJson(Map<String, dynamic> json) => _$OptionModelFromJson(json);
}