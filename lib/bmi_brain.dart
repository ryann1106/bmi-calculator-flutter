import 'dart:math';

class BmiBrain {
  BmiBrain({required this.height, required this.weight});
  final height;
  final weight;

  double _bmi = 10.0;

  String bmiResultNumber() {
    _bmi = weight / pow(height / 100, 2);

    return _bmi.toStringAsFixed(1);
  }

  String bmiResultStatus() {
    if (_bmi >= 25.0) {
      return 'Overweight';
    } else if (_bmi > 18.0) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String bmiResultExplain() {
    if (_bmi >= 25.0) {
      return 'You are Overweight, please exercise more.';
    } else if (_bmi > 18.0) {
      return 'You are in healthy state.';
    } else {
      return 'You are Underweight. Please try to eat more.';
    }
  }
}
