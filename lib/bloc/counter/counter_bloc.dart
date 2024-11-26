import 'package:bloc/bloc.dart';
import 'package:bloc_sm/bloc/counter/counter_event.dart';
import 'package:bloc_sm/bloc/counter/counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc():   super (CounterState()){
   on<PlusCounter>(plus);
   on<MinusCounter>(minus);
  }

  void plus(PlusCounter event, Emitter<CounterState> emit){
    emit(state.copyWith(counter: state.counter + 1));
  }

  void minus(MinusCounter event, Emitter<CounterState> emit){
    emit(state.copyWith(counter: state.counter - 1));
  }

}