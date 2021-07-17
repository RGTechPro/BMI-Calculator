import 'dart:math';

import 'package:flutter/material.dart';

class calculation {
  calculation({@required this.height, @required this.weight});
  final weight;
  final height;
  double _bmi;
  String getResult() {
    if (_bmi > 25)
      return "OVERWEIGHT";
    else if (_bmi < 25 && _bmi > 18.5)
      return "NORMAL";
    else
      return "UNDERWEIGHT";
  }

  String getInterpret() {
    if (_bmi > 25)
      return "You have a higher BMI than normal body weight, Try to exercise more!";
    else if (_bmi < 25 && _bmi > 18.5)
      return "You have a normal body weight, No need to worry!";
    else
      return "You have a lower BMI than normal body weight, Try to eat more!";
  }

  String getBmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }
}
