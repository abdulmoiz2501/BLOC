import 'package:bloc_learning/6_slider_&_switch_example/switch_and_slider/bloc/switch_bloc.dart';
import 'package:bloc_learning/6_slider_&_switch_example/switch_and_slider/bloc/switch_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/switch_event.dart';

class SwitchScreen extends StatelessWidget {
  const SwitchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Switch App')),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text('Notifications'),
                BlocBuilder<SwitchBloc, SwitchStates>(

                  builder: (context, state) {
                    return Switch(
                      value: state.isSwitch,
                      onChanged: (newValue) {
                        print("SwitchBloc is now in state $state");
                        print("New value of the switch is $newValue");
                        context.read<SwitchBloc>().add(EnableOrDisableNotifications());
                      },
                    );
                  },
                ),
              ],
            ),
            const SizedBox(height: 20),
            BlocBuilder<SwitchBloc, SwitchStates>(
              builder: (context, state) {
                return Container(
                  height : 200,
                  width: 200,
                  color: Colors.red.withOpacity(state.slider),
                  child: SizedBox(width: 200, height: 200,child: Text("Slider value is ${state.slider}", style: TextStyle(color: Colors.white))),
                );
              },
            ),
            const SizedBox(height: 50),
            BlocBuilder<SwitchBloc, SwitchStates>(
              builder: (context, state) {
               return Slider(value: state.slider, onChanged: (value) {
                  print("Slider value is $value");
                  print("SwitchBloc is now in state $state");
                  context.read<SwitchBloc>().add(SliderEvent(slider:value));
                });
              },
            ),

          ],
        ),
      ),
    );
  }
}
