import 'package:equatable/equatable.dart';

abstract class SplashEvent extends Equatable{

  SplashEvent();

  @override
  List<Object> get props => [];
}

class SplashStart extends SplashEvent{}
