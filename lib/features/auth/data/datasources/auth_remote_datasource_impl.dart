import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';
import 'package:serendipity/core/network/dio_client.dart';
import 'package:serendipity/core/utils/constants.dart';
import 'package:serendipity/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:serendipity/features/auth/data/models/response_models/gender_response_model/gender_response_model.dart';
import 'package:serendipity/features/auth/data/models/response_models/questionnaire_response_model/questionnaire_response_model.dart';

@Injectable(as: AuthRemoteDatasource)
class AuthRemoteDatasourceImpl extends AuthRemoteDatasource{
  final DioClient dioClient;
  AuthRemoteDatasourceImpl(this.dioClient);

  @override
  Future<Map<String, dynamic>> login(String email, String password)async{
    try{
      final data = await dioClient.post(
      ApiEndpoints.login,
      data: {
        'email': email,
        'password' : password
      }
    );
    return data;
    }catch(e){
      debugPrint(e.toString());
      throw Exception(e.toString());
    }
  }
  
  @override
  Future<QuestionnaireResponseModel> getQuestionnaire() async{
    try{
       final data = await dioClient.get(
      ApiEndpoints.getQuestionnaire,
    );
    return QuestionnaireResponseModel.fromJson(data); 
    }catch(e){
      debugPrint(e.toString());
      throw Exception(e.toString());
    }
  }

  @override
  Future<Map<String, dynamic>> questionnaireAnswer(int questionId, int optionId) async{
    try{
       final data = await dioClient.get(
      ApiEndpoints.questionnaireAnswer,
    );
    return data; 
    }catch(e){
      debugPrint(e.toString());
      rethrow;
    }
   
  }
  
  @override
  Future<Map<String, dynamic>> register(String email, String password)async {
   try{
    final data = await dioClient.post(
      ApiEndpoints.register,
      data: {
        'email' : email,
        'password' : password
      }
    );
    return data;
   }catch(e){
    debugPrint(e.toString());
    throw Exception(e.toString());
   }
  }

  @override
  Future<GenderResponseModel> getGenders() async{
    try{
      final data = await dioClient.get(ApiEndpoints.getGenders);
      return GenderResponseModel.fromJson(data);
    }catch (e){
      throw Exception(e.toString());
    }
  }
}