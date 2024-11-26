import 'package:equatable/equatable.dart';

abstract class SliderEvent extends Equatable{

  SliderEvent();

  @override
  List<Object> get props => [];
}


class EnableOrDisableNotification extends SliderEvent{}

class SliderFunEvent extends SliderEvent{
  double slider;

  SliderFunEvent({required this.slider});

  @override
  List<Object> get props =>  [slider];
}