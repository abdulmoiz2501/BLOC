import 'package:bloc/bloc.dart';
import 'package:bloc_learning/6_slider_&_switch_example/switch_and_slider/bloc/switch_event.dart';
import 'package:bloc_learning/6_slider_&_switch_example/switch_and_slider/bloc/switch_state.dart';


class SwitchBloc extends Bloc<SwitchEvent, SwitchStates>
{
  SwitchBloc() : super(SwitchStates()){
    on<EnableOrDisableNotifications>(_enableOrDisableNotifications);
  }

  void _enableOrDisableNotifications(EnableOrDisableNotifications events, Emitter<SwitchStates> emit){
    emit(state.copyWith(isSwitch: !state.isSwitch));
  }

}