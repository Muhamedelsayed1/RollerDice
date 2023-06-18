import 'package:flutter/material.dart';

// ignore: must_be_immutable
class StyleText extends StatelessWidget {
  StyleText(this.text, {super.key});
  String text;
  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 28,
      ),
    );
  }
}
