import 'dart:math';

class Calculator {
  final int height;
  final int weight;
  Calculator({required this.height, required this.weight});
  late double _bmi;
  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi > 25) {
      return 'Overweight';
    } else if (_bmi > 18) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInfo() {
    if (_bmi > 25) {
      return 'You have higher than normal body weight. Try to exercise more.  ';
    } else if (_bmi > 18) {
      return 'You have a normal body weight. Good job!.';
    } else {
      return 'You have lower than normal body weight. You can eat a bit more.';
    }
  }
}
