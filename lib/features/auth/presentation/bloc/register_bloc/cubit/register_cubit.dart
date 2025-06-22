
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:serendipity/features/auth/domain/usecases/register_usecase.dart';
import 'package:serendipity/features/auth/presentation/bloc/register_bloc/cubit/register_state.dart';


class RegisterCubit extends Cubit<RegisterState>{
  final RegisterUsecase registerUsecase;
  RegisterCubit(this.registerUsecase) : super(RegisterInitial());

  void register(String email, String password)async{
    try{
      emit(RegisterState.initial());
      final data = await registerUsecase.call(email, password);
      emit(RegisterState.success(data));
      
    }catch(e){
      debugPrint(e.toString());
      emit(RegisterState.error(e.toString()));
    }
  }
}