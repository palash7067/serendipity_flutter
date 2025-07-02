import 'package:serendipity/features/auth/data/models/gender_model/gender_model.dart';

sealed class GenderState {}
class GenderInitial extends GenderState{}
class GenderLoading extends GenderState{}
class GenderSuccess extends GenderState{
  final List<GenderModel> genders;
  GenderSuccess(this.genders);
}

class GenderError extends GenderState{
  final String message;
  GenderError(this.message);
}