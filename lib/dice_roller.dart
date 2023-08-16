import 'dart:math';
import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

// Private class, can not be access in another class even after import: _class.
class _DiceRollerState extends State<DiceRoller> {
  var currentRoll = 2;

  void rolldice() {
    setState(() {
      currentRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/dice_imgs/dice_$currentRoll.png',
          width: 150,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
            onPressed: rolldice,
            style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                // padding: const EdgeInsets.only(
                //   top: 20,
                // ),
                textStyle: const TextStyle(fontSize: 28, fontFamily: 'Roboto')),
            child: const Text('Roll Dice')),
      ],
    );
  }
}
