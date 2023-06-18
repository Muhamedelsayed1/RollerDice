import 'package:flutter/material.dart';
import 'package:first_app/gradinat_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradiantContainer(Colors.deepPurple, Colors.deepPurpleAccent),
      ),
    ),
  );
}
