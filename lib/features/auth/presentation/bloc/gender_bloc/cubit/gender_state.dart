import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:serendipity/features/auth/data/models/gender_model/gender_model.dart';
part 'gender_state.freezed.dart';

@freezed
class GenderState with _$GenderState {
  const factory GenderState.initial() = GenderInitial;
  const factory GenderState.loading() = GenderLoading;
  const factory GenderState.success(List<GenderModel> genders) = GenderSuccess;
  const factory GenderState.error(String message) = GenderError;
}