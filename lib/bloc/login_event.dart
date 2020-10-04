part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class SignInEvent extends LoginEvent {
  final String email;
  final String password;

  SignInEvent({@required this.email, @required this.password});

  @override
  List<Object> get props => [email, password];
}
