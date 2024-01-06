import 'package:flutter/material.dart';
import 'package:flutter_roll_dice_app/widgets/dice_roller.dart';

class GradientContainerDefault extends StatelessWidget {
  final List<Color> gradientColors;

  const GradientContainerDefault({
    super.key,
    required this.gradientColors,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: gradientColors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
