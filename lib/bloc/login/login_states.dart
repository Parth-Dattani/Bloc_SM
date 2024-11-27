import 'package:equatable/equatable.dart';

class LoginState extends Equatable{
  @override

  LoginState();

  List<Object?> get props => [];
}

class LoginInitial extends LoginState{}

class LoginLoading extends LoginState{}

class LoginSuccess extends LoginState{
  final Map<String, dynamic> userData;

  LoginSuccess(this.userData);
}


class LoginFail extends LoginState{
  String error;

  LoginFail(this.error);

  List<Object> get props => [error];

}
