import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:serendipity/features/auth/domain/usecases/get_questionnaire_usecase.dart';
import 'package:serendipity/features/auth/presentation/bloc/questionnaire_bloc/cubit/questionnare_state.dart';

class QuestionnaireCubit extends Cubit<QuestionnaireState>{
  final GetQuestionnaireUsecase getQuestionnaireUsecase;
  QuestionnaireCubit(this.getQuestionnaireUsecase) : super(QuestionnaireState.loading());

  Future<void> getQuestionnaires()async{
    emit(QuestionnaireState.loading());
    try{
        final data = await getQuestionnaireUsecase.call();
        emit(QuestionnaireState.success(data.questionnaires ?? []));
      }catch (e){
        emit(QuestionnaireState.error(e.toString()));
      }
  }


 
}