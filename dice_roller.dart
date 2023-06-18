import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var cureentDiceRoll = 1;
  var activeDiceImages = 'assets/images/dice-images/dice-1.png';
  void rollerDice() {
    var diceRoller =
        Random().nextInt(6) + 1; // +1 to give me a random number from 1 to 6
    setState(() {
      activeDiceImages = 'assets/images/dice-images/dice-$diceRoller.png';
    });
  }

  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDiceImages,
          width: 200,
        ),
        TextButton(
            onPressed: rollerDice,
            style: TextButton.styleFrom(
                padding: const EdgeInsets.only(top: 20),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 28,
                )),
            child: const Text("Roller dice"))
      ],
    );
  }
}
