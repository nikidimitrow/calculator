import 'package:flutter/material.dart';
import 'botton.dart'; // Importing the button.dart file

class CalculaterScreen extends StatefulWidget {
  const CalculaterScreen({super.key});

  @override
  State<CalculaterScreen> createState() => _CalculaterScreenState();
}

class _CalculaterScreenState extends State<CalculaterScreen> {
  String _output = '0';

  void _onButtonPressed(String value) {
    setState(() {
      // Logic to handle button press and calculator operation
      if (_output == '0') {
        _output = value;
      } else {
        _output += value;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Display Section
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                alignment: Alignment.bottomRight,
                padding: const EdgeInsets.all(16),
                child: Text(
                  _output,
                  style: const TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.end,
                ),
              ),
            ),
          ),

          // Buttons Section
          Wrap(
            children: [
              CalculatorButton(
                label: "1",
                color: Colors.grey,
                onPressed: () => _onButtonPressed('1'),
              ),
              CalculatorButton(
                label: "2",
                color: Colors.grey,
                onPressed: () => _onButtonPressed('2'),
              ),
              CalculatorButton(
                label: "3",
                color: Colors.grey,
                onPressed: () => _onButtonPressed('3'),
              ),
              CalculatorButton(
                label: "+",
                color: Colors.orange,
                onPressed: () => _onButtonPressed('+'),
              ),
              CalculatorButton(
                label: "=",
                color: Colors.blue,
                onPressed: () {
                  // Here you can handle the calculation logic
                  print("Equals pressed");
                },
              ),
              // Add more buttons as needed
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
    );
  }
}
