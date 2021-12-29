import 'package:flutter/material.dart';
import 'dart:math';

class ResultConstraction {
  final int weight;
  final int height;
  ResultConstraction({@required this.weight, @required this.height});
  double bmi;
  String calcResult() {
    bmi = weight / pow(height / 100, 2);
    return bmi.toStringAsFixed(2);
  }

  String getResult() {
    if (bmi >= 25) {
      return 'OverWeight';
    } else if (bmi > 18.5) {
      return 'Normal';
    } else {
      return 'UnderWeight';
    }
  }

  String descriptionResult() {
    if (bmi >= 25) {
      return 'You have a higher than Normal body weight.try to exercise more.';
    } else if (bmi > 18.5) {
      return 'You have a Normal body weight.Good job.';
    } else {
      return 'You have a lower than Normal body weight.you can eat a bit more';
    }
  }
}
