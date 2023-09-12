import 'package:flutter/material.dart';
import 'package:new_project/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(colors: [
          Color.fromARGB(255, 95, 39, 236),
          Color.fromARGB(255, 40, 6, 125),
        ]),
      ),
    ),
  );
}
