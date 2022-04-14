void main() {
  var height = 160;
  var weight = 60;
  var age = 20;
  var bmr;
  var activity = "Heavy exercise (6–7 days per week)";
  var calorie_activity;
  var gender;
  if (gender == 'Female') {
    bmr = (10 * weight + 6.25 * height * 2.54 - 5 * age - 161) - 166;
    print("BMR is: $bmr");
  } else {
    bmr = (10 * weight + 6.25 * height - 5 * age + 5) + 166;
    print("BMR is: $bmr");
  }
  if (activity == "Little to no exercise") {
    calorie_activity = bmr * 1.2;
    print("Required calorie is: $calorie_activity");
  } else if (activity == "Light exercise (1–3 days per week)") {
    calorie_activity = bmr * 1.375;
    print("Required calorie is: $calorie_activity");
  } else if (activity == "Moderate exercise (3–5 days per week)") {
    calorie_activity = bmr * 1.55;
    print("Required calorie is: $calorie_activity");
  } else if (activity == "Heavy exercise (6–7 days per week") {
    calorie_activity = bmr * 1.725;
    print("Required calorie is: $calorie_activity");
  } else {
    calorie_activity = bmr * 1.9;
    print("Required calorie is: $calorie_activity");
  }
}
