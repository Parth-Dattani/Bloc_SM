

import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:bloc_sm/bloc/login/login_events.dart';
import 'package:bloc_sm/bloc/login/login_states.dart';

import '../../services/remot_services.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState>{
  LoginBloc() :  super(LoginInitial()){
    on<LoginAPI>(login);
    // on<LoginAPI>((event, emit) async {
    //   await login(event, emit);
    //   await mapEventToState(event);
    // });
  }

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
  print("--------------event");

    if (event is LoginAPI) {
      yield LoginLoading();
      var data;
      try {
        var response = await RemoteServices.loginAPI(event.email, event.password);

        if (response.body.isNotEmpty) {
          data =  json.decode(response.body);

          print("-----response: ${response.statusCode}");
          if (response.statusCode == 200 && data['message'] != "Invalid Credential") {
            // Store preferences
            // await sharedPreferencesHelper.storeBoolPrefData("isLogin", true);
            // await sharedPreferencesHelper.storeIntPrefData(
            //     "employeeId", data['data'][0]['employees'][0]['employeeId']);
            // await sharedPreferencesHelper.storePrefData(
            //     "employeeEmail", data['data'][0]['employees'][0]['email']);
            // await sharedPreferencesHelper.storePrefData(
            //     "empPass", event.password);
            // await sharedPreferencesHelper.storePrefData(
            //     "employeeName", data['data'][0]['employees'][0]['name']);

            //// Update AppConstants
            // AppConstants.empId.value =
            // await sharedPreferencesHelper.retrievePrefIntData('employeeId');
            // AppConstants.empEmail.value =
            // (await sharedPreferencesHelper.retrievePrefData('employeeEmail'))!;
            // AppConstants.empName.value =
            // (await sharedPreferencesHelper.retrievePrefData('employeeName'))!;

            yield LoginSuccess(data);
          } else {
            yield LoginFail(data['message'] ?? "Login failed");
          }
        } else {
          yield LoginFail("Response body is empty");
        }
      } catch (e) {

        emit(LoginFail("Invalid response format"));
        return;
        //yield LoginFail("An error occurred: ${e.toString()}");
      }
    }
  }

///

  Future<void> login(LoginAPI event, Emitter<LoginState> emit) async {
    emit(LoginLoading());
    try {
      var response = await RemoteServices.loginAPI(event.email, event.password);

      print("-------Ressss: ${response.statusCode}");
      if (response.body.isEmpty) {
        emit(LoginFail("Response body is empty"));
        return;
      }

      final data = json.decode(response.body);

      if (response.statusCode == 200 && data['message'] != "Invalid Credential") {
        emit(LoginSuccess(data));
      } else {
        emit(LoginFail(data['message'] ?? "Login failed"));
      }
    }
    catch(e){

    }
  }
}