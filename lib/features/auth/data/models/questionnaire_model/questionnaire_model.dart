import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:serendipity/features/auth/data/models/option_model/option_model.dart';

part 'questionnaire_model.freezed.dart';
part 'questionnaire_model.g.dart';


@freezed
sealed class QuestionnaireModel with _$QuestionnaireModel{
  const factory QuestionnaireModel({
    int? id,
    String? question,
    List<OptionModel>? options,
    @JsonKey(name: 'selected_option') OptionModel? selectedOption
  }) = _QuestionnaireModel;

  factory QuestionnaireModel.fromJson(Map<String, dynamic> json) => _$QuestionnaireModelFromJson(json);

}