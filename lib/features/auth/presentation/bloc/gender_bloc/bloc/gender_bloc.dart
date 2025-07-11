
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:serendipity/features/auth/domain/usecases/get_gender_usecase.dart';
import 'package:serendipity/features/auth/presentation/bloc/gender_bloc/bloc/gender_event.dart';
import 'package:serendipity/features/auth/presentation/bloc/gender_bloc/bloc/gender_state.dart';

class GenderBloc extends Bloc<GenderEvent, GenderState>{
  final GetGenderUsecase genderUsecase;
  GenderBloc(this.genderUsecase) : super(GenderInitial()){
    on<FetchGenders>((event, emit)async{
      try{
        emit(GenderLoading());
        final data = await genderUsecase.call();
        emit(GenderSuccess(data.genders ?? []));
      }catch(e){
        emit(GenderError(e.toString()));
      }
    });
  }
  
}