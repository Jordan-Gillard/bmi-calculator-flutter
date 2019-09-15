import 'dart:math';

class BMIBrain {
  final int weight;
  final int height;

  BMIBrain({this.weight, this.height});

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String bMIClass() {
    if (_bmi > 30.0) {
      return 'Obese';
    } else if (_bmi > 25.0) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal Weight';
    } else {
      return 'Underweight';
    }
  }

  String bMIExplanation() {
    if (_bmi > 30.0) {
      return 'Your body mass index indicates that you are obese. You should try dieting and getting regular exercise.';
    } else if (_bmi > 25.0) {
      return 'Your body mass index indicates that you are overweight. You should try dieting and getting regular exercise.';
    } else if (_bmi > 18.5) {
      return 'Your body mass index indicates that you are of healthy weight. Nice work!';
    } else {
      return 'Your body mass index indicates that you are underweight. You should consult a doctor about increasing your food consumption.';
    }
  }
}
