import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:serendipity/features/auth/domain/usecases/login_usecase.dart';
import 'package:serendipity/features/auth/presentation/bloc/login_bloc/cubit/login_state.dart';

class LoginCubit extends Cubit<LoginState>{
  final LoginUsecase loginUsecase;
  LoginCubit(this.loginUsecase): super(LoginState.initial());

  Future<void> login(String email, String password)async{
    emit(LoginState.loading());
    try{
        final data = await loginUsecase.call(email: email, password:password);
        emit(LoginState.success(data));
      }catch (e){
        emit(LoginState.error(e.toString()));
      }
  }

}