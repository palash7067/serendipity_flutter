
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:serendipity/features/auth/data/models/response_models/gender_response_model/gender_response_model.dart';
import 'package:serendipity/features/auth/domain/usecases/get_gender_usecase.dart';
import 'package:serendipity/features/auth/presentation/bloc/gender_bloc/bloc/gender_bloc.dart';
import 'package:serendipity/features/auth/presentation/bloc/gender_bloc/bloc/gender_event.dart';
import 'package:serendipity/features/auth/presentation/bloc/gender_bloc/bloc/gender_state.dart';

class MockGenderUseCase extends Mock implements GetGenderUsecase{}

void main(){
  late MockGenderUseCase mockGenderUseCase;
  late GenderBloc genderBloc;

  setUp((){
    mockGenderUseCase = MockGenderUseCase();
    genderBloc = GenderBloc(mockGenderUseCase);
  });

  Map<String, dynamic> mockData = {
        'data': [{
          'id': 1,
          'name': 'Male'
        }]
      };

      final mockModel = GenderResponseModel.fromJson(mockData);


  blocTest<GenderBloc, GenderState>('Should emit [GenderLoading, GenderSuccess] when data is fetched successfully', 
  build: (){

    

    when(() => mockGenderUseCase.call()).thenAnswer((_)async=> mockModel);
    return genderBloc;
  },
  act: (bloc){
    bloc.add(FetchGenders());
  },
  expect: () => [
    isA<GenderLoading>(),
    isA<GenderSuccess>()
  ],
  );

    blocTest<GenderBloc, GenderState>('Should emit [GenderLoading, GenderError] when API fails', 
  build: (){

    

    when(() => mockGenderUseCase.call()).thenThrow(Exception("Error Fetching Data"));
    return genderBloc;
  },
  act: (bloc){
    bloc.add(FetchGenders());
  },
  expect: () => [
    isA<GenderLoading>(),
    isA<GenderError>()
  ],
  );
}