import 'package:flutter/material.dart';
import 'dart:math';


final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  int activeDiceID = 1;

  void rollDice() {
    setState(() {
      activeDiceID = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min, 
      children: [
      Image.asset('assets/images/dice-$activeDiceID.png', width: 200.0),
      TextButton(
        onPressed: rollDice,
        style: TextButton.styleFrom(
          padding: const EdgeInsets.only(top: 15.0),
        ),
        child: const Text(
          'Roll Dice',
          style: TextStyle(color: Colors.white, fontSize: 25.0),
        ),
      ),
    ]);
  }
}
