import 'package:flutter/material.dart';

class Animal extends StatelessWidget {
  final String name;
  const Animal({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    final animal = Container(
      color: Colors.black54,
      padding: const EdgeInsets.all(10.0),
      child: Center(
        child: Text(
          name,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Draggable(
        data: name,
        feedback: animal,
        child: animal,
      ),
    );
  }
}
