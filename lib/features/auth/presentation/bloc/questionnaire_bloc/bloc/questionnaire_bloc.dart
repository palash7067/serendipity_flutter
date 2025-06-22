
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:serendipity/features/auth/domain/usecases/get_questionnaire_usecase.dart';
import 'package:serendipity/features/auth/domain/usecases/questionnaire_answer_usecase.dart';
import 'package:serendipity/features/auth/presentation/bloc/questionnaire_bloc/bloc/questionnaire_event.dart';
import 'package:serendipity/features/auth/presentation/bloc/questionnaire_bloc/bloc/questionnaire_state.dart';

class QuestionnaireBloc extends Bloc<QuestionnaireEvent, QuestionnaireState>{
  final GetQuestionnaireUsecase getQuestionnaireUsecase;
  final QuestionnaireAnswerUsecase questionnaireAnswerUsecase;
  QuestionnaireBloc(this.getQuestionnaireUsecase, this.questionnaireAnswerUsecase) : super(QuestionnaireInitial()){

    on<FetchQuestionnaire>((event, emit)async{
      emit(QuestionnaireLoading());
      try{
        final data = await getQuestionnaireUsecase.call();
        emit(QuestionnaireSuccess(data.questionnaires ?? []));
      }catch (e){
        emit(QuestionnaireError(e.toString()));
      }
    });

    on<QuestionnaireAnswer>((event, emit)async{
      emit(QuestionnaireAnswerInitial());
      try{
        final data = await questionnaireAnswerUsecase.call(event.questionId, event.optionId);
        emit(QuestionnaireAnswerSuccess(data));
      }catch(e){
        emit(QuestionnaireError(e.toString()));
      }
    });
  }
}