

import 'package:bloc/bloc.dart';
import 'package:bloc_sm/bloc/login/login_events.dart';
import 'package:bloc_sm/bloc/login/login_states.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState>{
  LoginBloc() :  super(LoginInitial()){
    on<LoginEvent>((event, emit){

    });
  }
}