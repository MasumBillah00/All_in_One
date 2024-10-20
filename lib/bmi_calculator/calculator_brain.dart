import 'dart:math';

class CalculatorBrain{
  CalculatorBrain({this.height, this.weight});
  final int? height;
  final int? weight;

  double? _bmi;
  String calculateBMI() {
    if (height != null && weight != null && height! > 0) {
      _bmi = weight! / pow(height! / 100, 2);
      if (_bmi != null) {
        return _bmi!.toStringAsFixed(1);
      } else {
        return 'BMI calculation failed';
      }
    } else {
      return 'Invalid input';
    }
  }


  String getResult() {
    if (_bmi != null) {
      if (_bmi! >= 25) {
        return 'Overweight';
      } else if (_bmi! > 18.5) {
        return 'Normal';
      } else {
        return 'Underweight';
      }
    } else {
      return 'BMI not calculated'; // Return an error message if BMI is null
    }
  }

  String getInterpretation() {
    if (_bmi != null) {
      if (_bmi! >= 25) {
        return 'You have a higher than normal body weight. Try to exercise more.';
      } else if (_bmi! >= 18.5) {
        return 'You have a normal body weight. Good job!';
      } else {
        return 'You have a lower than normal body weight. You can eat a bit more.';
      }
    } else {
      return 'BMI not calculated'; // Return an error message if BMI is null
    }
  }

}