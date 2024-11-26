import 'package:equatable/equatable.dart';

class SplashState extends Equatable{
  SplashState();

  SplashState copyWith(){
    return SplashState();
  }


  @override
  List<Object> get props => [];
}

class SplashInitial extends SplashState{}

class SplashLoading extends SplashState{}

class SplashComplete extends SplashState{}