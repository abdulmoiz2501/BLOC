import 'package:bloc_learning/5_counter_example/ui/counter_screen.dart';
import 'package:flutter/material.dart';
import '2_equiable_example/2_ equitable_example.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      //home:  EquitableTesting(),
      debugShowCheckedModeBanner: false,
      home: CounterScreen(),
    );
  }
}
