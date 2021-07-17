import 'package:flutter/material.dart';
import 'input_file.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF12173B),
        scaffoldBackgroundColor: Color(0xFF111539),
      ),
      home: InputPage(),
    );
  }
}
