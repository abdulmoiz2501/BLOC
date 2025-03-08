import 'package:equatable/equatable.dart';

abstract class SwitchEvent extends Equatable{
  SwitchEvent();
  @override
  List<Object> get props => [];
}

class EnableOrDisableNotifications extends SwitchEvent{}


class SliderEvent extends SwitchEvent{
  //to take input
  double slider;

  SliderEvent({required this.slider});

  @override
  List<Object> get props => [slider];
}

