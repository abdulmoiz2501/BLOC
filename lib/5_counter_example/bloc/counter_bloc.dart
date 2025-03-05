import 'package:bloc/bloc.dart';
import 'package:bloc_learning/5_counter_example/bloc/counter_state.dart';

import 'counter_event.dart';



class CounterBloc extends Bloc<CounterEvent, CounterState>{


  CounterBloc() : super(const CounterState()){
    on<IncrementCounter>(_increment);
    on<DecrementCounter>(_decrement);
  }

  void _increment(IncrementCounter event, Emitter<CounterState> emit){
    emit(state.copyWith(counter: state.counter + 1));
  }

  void _decrement(DecrementCounter event, Emitter<CounterState> emit){
    emit(state.copyWith(counter: state.counter - 1));
  }
}

