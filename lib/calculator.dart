import 'package:flutter/material.dart';

class CalculaterScreen extends StatefulWidget {
  const CalculaterScreen({super.key});

  @override
  State<CalculaterScreen> createState() => _CalculaterScreenState();
}

class _CalculaterScreenState extends State<CalculaterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  alignment: Alignment.bottomRight,
                  padding: const EdgeInsets.all(16),
                  child: const Text
                  ('0', style: TextStyle
                    (
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.end,
                  ),
                ),
              ),
            ),        
            const Wrap(
              children: [],
            )
        ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
          ],
        ),);
  }
}