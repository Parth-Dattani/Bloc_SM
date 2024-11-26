import 'package:equatable/equatable.dart';

abstract class CounterEvent extends Equatable{


  const CounterEvent();
  @override
  List<Object> get props => [];
}

class PlusCounter extends CounterEvent{}

class MinusCounter extends CounterEvent{}