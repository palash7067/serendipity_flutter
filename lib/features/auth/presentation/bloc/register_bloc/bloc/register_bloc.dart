import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:serendipity/features/auth/domain/usecases/register_usecase.dart';
import 'package:serendipity/features/auth/presentation/bloc/register_bloc/bloc/register_event.dart';
import 'package:serendipity/features/auth/presentation/bloc/register_bloc/bloc/register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState>{
  final RegisterUsecase registerUsecase;
  RegisterBloc(this.registerUsecase) : super(RegisterInitial()){
    on<OnRegister>((event, emit)async{
      try{
        emit(RegisterLoading());
        final data = await registerUsecase.call(event.email, event.password);
         emit(RegisterSuccess(data));
      }catch(e){
        debugPrint(e.toString());
        emit(RegisterError(e.toString()));
      }
    });
  }
}