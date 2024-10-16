import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final String label;
  final Color color;
  final VoidCallback onPressed;

  const CalculatorButton({
    Key? key,
    required this.label,
    required this.color,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0), // Adds some space around the button
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color, // Button background color
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12), // Rounded corners
          ),
          padding: const EdgeInsets.all(20), // Internal padding of the button
        ),
        child: Text(
          label,
          style: const TextStyle(
            fontSize: 24, // Button text size
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
