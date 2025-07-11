
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:serendipity/features/auth/domain/usecases/get_gender_usecase.dart';
import 'package:serendipity/features/auth/presentation/bloc/gender_bloc/bloc/gender_state.dart';

class GenderCubit extends Cubit<GenderState>{
  final GetGenderUsecase genderUsecase;
  GenderCubit(this.genderUsecase): super(GenderInitial());

  Future<void> fetchGenders()async{
    try{
       emit(GenderInitial());
       final data = await genderUsecase.call();
       emit(GenderSuccess(data.genders ?? []));
    }catch (e){
      emit(GenderError(e.toString()));
    }
  }
} 