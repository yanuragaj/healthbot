import 'dart:math';

void main() {
  var height = 160;
  var weight = 60;
  double bmi = weight / pow(height / 100, 2);
  print(bmi);
  if (bmi >= 25) {
    print("Overweight");
  } else if (bmi > 18.5) {
    print("Normal");
  } else {
    print("Overweight");
  }
}
