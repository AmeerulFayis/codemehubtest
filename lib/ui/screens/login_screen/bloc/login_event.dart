part of 'login_bloc.dart';

@immutable
abstract class LoginEvent extends Equatable{
const LoginEvent();
}
class LoginButtonEvent extends LoginEvent{
  final String username;
  final String password;

  const LoginButtonEvent(this.username, this.password);


  @override

  List<Object?> get props => [username,password];

}
