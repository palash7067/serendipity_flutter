import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:serendipity/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:serendipity/features/auth/data/models/response_models/gender_response_model/gender_response_model.dart';
import 'package:serendipity/features/auth/data/models/response_models/questionnaire_response_model/questionnaire_response_model.dart';
import 'package:serendipity/features/auth/domain/repositories/auth_repository.dart';

// DataRepositoryImpl to handle data flow, cache management, and synchronization between
// local and remote sources, keeping the architecture organized and responsibilities clear

// Example
// Check Local Data: First, fetch data from the local database and check if it’s outdated.
// Fallback to Remote Data: If the local data is outdated or empty, fetch fresh data from the remote source.
// Update Local Database: Save the newly fetched remote data in the local database for future use.


@Injectable(as: AuthRepository)
class AuthRepositoryImpl extends AuthRepository{
  final AuthRemoteDatasource authRemoteDatasource;
  AuthRepositoryImpl(this.authRemoteDatasource);

  @override
  Future<Map<String, dynamic>> login(String email, String password)async {
    try{
      final data = await authRemoteDatasource.login(email, password);
      return data;
    }catch(e){
      debugPrint(e.toString());
      throw Exception(e.toString());
    }
    
  }

  @override
  Future<QuestionnaireResponseModel> getQuestionnaire() async{
    try{
      final data = await authRemoteDatasource.getQuestionnaire();
      return data;
    }catch(e){
      debugPrint(e.toString());
      throw Exception(e.toString());
    }
  }
  
  @override
  Future<Map<String, dynamic>> questionnaireAnswer(int questionId, int optionId)async {
    try{
      final data = await authRemoteDatasource.questionnaireAnswer(questionId, optionId);
      return data;
    }catch(e){
      debugPrint(e.toString());
      throw Exception(e.toString());
    }
  }
  
  @override
  Future<Map<String, dynamic>> register(String email, String password) async{
   try{
    final data = await authRemoteDatasource.register(email, password);
    return data;
   }catch(e){
    debugPrint(e.toString());
    throw Exception(e.toString());
  }
  }

  @override
  Future<GenderResponseModel> getGenders() async{
    try{
      final data = await authRemoteDatasource.getGenders();
      return data;
    }catch(e){
      throw Exception(e.toString());
    }
  }  
}