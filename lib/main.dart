import 'package:bloc_learning/5_counter_example/bloc/counter_bloc.dart';
import 'package:bloc_learning/5_counter_example/ui/counter_screen.dart';
import 'package:bloc_learning/6_slider_&_switch_example/switch_and_slider/bloc/switch_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '6_slider_&_switch_example/switch_and_slider/ui/switch_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterBloc(),
      child: BlocProvider(
        create: (context) => SwitchBloc(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: SwitchScreen(),
        ),
      ),
    );
  }
}
