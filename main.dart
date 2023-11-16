import 'dart:io';
import 'dart:math' as math;

void main() {
  print('Welcome to the ken quadratic equation solver');
  print('What is your name?');
  String name = stdin.readLineSync()!;

  print('Welcome, $name!');

  print('Enter the coefficients of the quadratic equation ax^2 + bx + c:');
  double a = double.parse(stdin.readLineSync()!);
  double b = double.parse(stdin.readLineSync()!);
  double c = double.parse(stdin.readLineSync()!);

  double discriminant = b * b - 4 * a * c;

  if (discriminant > 0) {
    double root1 = (-b + math.sqrt(discriminant)) / (2 * a);
    double root2 = (-b - math.sqrt(discriminant)) / (2 * a);

    print('The roots of the quadratic equation are: $root1 and $root2');
  } else if (discriminant == 0) {
    double root = -b / (2 * a);

    print('The root of the quadratic equation is: $root');
  } else {
    print('The quadratic equation has no real roots.');
  }
}
