import 'dart:math';
import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

// Private class, can not be access in another class even after import: _class.
class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/dice_imgs/dice_1.png';
  void rolldice() {
    var diceRoller = Random().nextInt(6) + 1;
    setState(() {
      activeDiceImage = 'assets/dice_imgs/dice_$diceRoller.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDiceImage,
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
