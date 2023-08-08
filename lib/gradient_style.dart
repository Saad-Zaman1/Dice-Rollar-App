import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

const topLeft = Alignment.topRight;
const bottomRight = Alignment.bottomRight;

class GradiantContainer extends StatelessWidget {
  const GradiantContainer({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(197, 24, 5, 227),
            Color.fromARGB(105, 57, 76, 125)
          ],
          begin: topLeft,
          end: bottomRight,
        ),
      ),
      child: const Center(child: DiceRoller()),
    );
  }
}
