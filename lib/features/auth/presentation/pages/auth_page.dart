import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:serendipity/features/auth/domain/usecases/get_questionnaire_usecase.dart';
import 'package:serendipity/features/auth/domain/usecases/login_usecase.dart';
import 'package:serendipity/features/auth/domain/usecases/questionnaire_answer_usecase.dart';
import 'package:serendipity/features/auth/presentation/bloc/login_bloc/bloc/login_bloc.dart';
import 'package:serendipity/features/auth/presentation/bloc/login_bloc/bloc/login_event.dart';
import 'package:serendipity/features/auth/presentation/bloc/login_bloc/bloc/login_state.dart';
import 'package:serendipity/features/auth/presentation/bloc/login_bloc/cubit/login_cubit.dart';
import 'package:serendipity/features/auth/presentation/bloc/questionnaire_bloc/bloc/questionnaire_bloc.dart';
import 'package:serendipity/features/auth/presentation/bloc/questionnaire_bloc/bloc/questionnaire_event.dart';
import 'package:serendipity/features/auth/presentation/bloc/questionnaire_bloc/bloc/questionnaire_state.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
       create: (context) => QuestionnaireBloc(GetIt.instance<GetQuestionnaireUsecase>(), GetIt.instance<QuestionnaireAnswerUsecase>()),
       
      child: Scaffold(
        body: BlocBuilder<QuestionnaireBloc, QuestionnaireState>(
          builder: (context, state) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: (){
                    context.read<QuestionnaireBloc>().add(FetchQuestionnaire());
                    // context.read<LoginBloc>().add(LoginInitiated('palashshrivastava22@gmail.com', '123456')); //Bloc Example
                    // context.read<LoginCubit>().login('palashshrivastava22@gmail.com', '123456'); //Cubit Example
              
                  }, child: Text('Login API'))
                ],
              ),
            );
          },
          
        ),
      ),
    );
  }
}