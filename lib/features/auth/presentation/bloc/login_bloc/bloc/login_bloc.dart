import 'package:serendipity/features/auth/domain/usecases/login_usecase.dart';
import 'package:serendipity/features/auth/presentation/bloc/login_bloc/bloc/login_event.dart';
import 'package:serendipity/features/auth/presentation/bloc/login_bloc/bloc/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState>{
  final LoginUsecase loginUsecase;

  LoginBloc(this.loginUsecase) : super(LoginInitial()){

    on<LoginInitiated>((event, emit)async{
      emit(LoginLoading());
      try{
        final data = await loginUsecase.call(email: event.email, password: event.password);
        emit(LoginSuccess(data));
      }catch (e){
        print(e.toString());
        emit(LoginError(e.toString()));
      }
    },);
  }



}