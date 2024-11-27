import 'package:equatable/equatable.dart';

abstract class LoginEvent extends Equatable{

  LoginEvent();

  @override
  List<Object> get props => [];

}

class LoginAPI extends LoginEvent{
  String email;
  String password;

  LoginAPI(this.email, this.password);

  @override
  List<Object> get props => [email, password];


}