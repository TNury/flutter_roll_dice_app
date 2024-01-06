import 'package:flutter/material.dart';
import 'package:flutter_roll_dice_app/widgets/gradient_container_default.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'JetBrains Mono Regular'),
      home: const Scaffold(
        body: GradientContainerDefault(
          gradientColors: [
            Colors.deepPurple,
            Colors.deepPurpleAccent,
            Colors.red,
          ],
        ),
      ),
    ),
  );
}
