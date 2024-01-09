part of 'lead_bloc.dart';

@immutable
abstract class LeadState extends Equatable{

}

class LeadInitialState extends LeadState {
  @override
  List<Object?> get props => [];
}

class LoadingState extends LeadState{
  @override
  List<Object?> get props =>[];
}
class LoadedState extends LeadState{
  LeadResponse response;

  LoadedState(this.response);

  @override
  List<Object?> get props => [response];
}