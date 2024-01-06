import 'dart:math';

import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  int _currentDiceRoll = 1;

  void _rollDice() {
    int updatedDiceRoll = randomizer.nextInt(6) + 1;

    setState(() {
      _currentDiceRoll = updatedDiceRoll;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/media/dice-$_currentDiceRoll.png',
          width: 200,
          height: 200,
        ),
        const SizedBox(height: 32),
        TextButton(
          onPressed: _rollDice,
          style: TextButton.styleFrom(
            backgroundColor: Colors.red,
            padding: const EdgeInsets.all(16),
          ),
          child: const Text(
            'Refresh dice',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
