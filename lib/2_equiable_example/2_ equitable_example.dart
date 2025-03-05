import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';

class EquitableTesting extends StatefulWidget {
  const EquitableTesting({super.key});

  @override
  State<EquitableTesting> createState() => _EquitableTestingState();
}

class _EquitableTestingState extends State<EquitableTesting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Person person = Person(name: 'Moiz', age: 23);
          Person person1 = Person(name: 'Moiz', age: 23);

          print(person.hashCode.toString());
          print(person1.hashCode.toString());

          print(person == person1);

        },
        child: const Icon(Icons.add),
      )
    );
  }
}


class Person extends Equatable{
  final String name;
  final int age;

  const Person({required this.name, required this.age});

  @override
  List<Object?> get props => [name, age];


}