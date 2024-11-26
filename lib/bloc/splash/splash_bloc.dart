import 'package:bloc/bloc.dart';
import 'package:bloc_sm/bloc/splash/splah_state.dart';
import 'package:bloc_sm/bloc/splash/splash_event.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState>{
  SplashBloc():  super(SplashState()){
    on<SplashStart>(startSplash);
  }

  Future<void> startSplash(SplashStart event , Emitter<SplashState> emit) async {
    emit(SplashLoading());
    await Future.delayed(Duration(seconds: 3));
    emit(SplashComplete());
  }
}