import 'package:equatable/equatable.dart';

class SliderState extends Equatable{

  double slider;
  bool isSwitch ;

  SliderState({this.isSwitch = false,
  this.slider = 1.0});

  /// copyWith Method is create a new instance
  SliderState copyWith({bool? isSwitch, double? slider}){
    return SliderState(
        isSwitch:  isSwitch ?? this.isSwitch,
        slider:  slider ?? this.slider
    );
}

  @override
  // TODO: implement props
  List<Object?> get props => [isSwitch, slider];

}