import 'package:bloc/bloc.dart';
import 'package:bloc_sm/bloc/slider/slider_event.dart';
import 'package:bloc_sm/bloc/slider/slider_state.dart';

class SliderBloc extends Bloc<SliderEvent, SliderState> {
  SliderBloc():  super(SliderState()) {
    on<EnableOrDisableNotification>(enableOrDisableNotification);
    on<SliderFunEvent>(sliderFun);
  }

  void enableOrDisableNotification(EnableOrDisableNotification event, Emitter<SliderState> emit){

    emit(state.copyWith(isSwitch:  !state.isSwitch));
  }

  void sliderFun(SliderFunEvent event, Emitter<SliderState> emit){
    emit(state.copyWith(slider: event.slider));
  }
}