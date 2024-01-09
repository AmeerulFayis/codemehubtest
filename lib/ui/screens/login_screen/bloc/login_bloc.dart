import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:codemehubtest/data/api/login_response.dart';
import 'package:codemehubtest/service/api_service.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final APIService _apiService;
  LoginBloc(this._apiService) : super(LoginInitialState()) {
    on<LoginButtonEvent>((event, emit) async{
final response=await _apiService.login(event.username, event.password);
if(response?.code==401){
  emit(const UnAuthorizedState());
}else if(response?.code==500){
  emit(ErrorState());
}else if(response?.code==503){
  emit(const NoInternetState());
}else{
emit(LoginSuccessState(response!));
}
    });
  }
}
