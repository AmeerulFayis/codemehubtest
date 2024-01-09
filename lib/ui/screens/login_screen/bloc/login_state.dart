part of 'login_bloc.dart';

@immutable
abstract class LoginState extends Equatable{
const LoginState();
}

class LoginInitialState extends LoginState {
  @override

  List<Object?> get props =>[];

}

class LoginSuccessState extends LoginState{
LoginResponse response;

LoginSuccessState(this.response);

  @override

  List<Object?> get props => [response];
}


class UnAuthorizedState extends LoginState {
  const UnAuthorizedState();
  @override
  List<Object?> get props => [];
}

class NoInternetState extends LoginState {
  const NoInternetState();
  @override
  List<Object?> get props => [];
}

class ErrorState extends LoginState{

  @override
  List<Object?> get props =>[];

}

