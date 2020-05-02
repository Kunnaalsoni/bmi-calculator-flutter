import 'dart:math';

class BMIBrain {
  BMIBrain({this.height, this.weight});
  final int weight;
  final int height;
  String _interpretation_text;
  String _suggestion_text;
  double _bmi;
  String bmi_result() {
    _bmi = weight/ pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }
  String interpretation() {
    if (_bmi>=25.0) {
      _interpretation_text = "OVERWEIGHT";
    } else if (_bmi<=25.0 && _bmi>=18.5) {
      _interpretation_text = "NORMAL";
    } else {
      _interpretation_text = "UNDERWEIGHT";
    }
    return _interpretation_text;
  }
  String suggestion() {
    if (_bmi>25.0) {
      _suggestion_text = "You are overweight. You should start dieting";
    } else if (_bmi<25.0 && _bmi > 18.5) {
      _suggestion_text = "You are fit, keep this spirit up.";
    } else {
      _suggestion_text = "You are underweight, you should eat more.";
    }
    return _suggestion_text;
  }
}