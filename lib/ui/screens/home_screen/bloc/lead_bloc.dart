import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:codemehubtest/data/api/lead_response.dart';
import 'package:codemehubtest/ui/util/app_sp.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../../../service/api_service.dart';

part 'lead_event.dart';
part 'lead_state.dart';

class LeadBloc extends Bloc<LeadEvent, LeadState> {
  final APIService _apiService;
  LeadBloc(this._apiService) : super(LeadInitialState()) {
    on<LeadApiEvent>((event, emit) async{
emit(LoadingState());
String token=await AppSp().getToken();
final response=await _apiService.getLead(token);
if(response.code==401){

}else if(response.code==500){

}else if(response.code==503){

}else{
  emit(LoadedState(response));
}

    });
  }
}
