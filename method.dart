// methods:
//     -instance method
//     -get/setter
//     - abstract method
import 'dart:io';

class circle extends circleMethod {
  double r = 1;

  // circle(this.r);
  static const double PI = 3.1415;

  set radius(double values) => this.r = values;

  double get radius {
    return r;
  }

  @override
  double area(double r) => PI * r * r;

  @override
  double circumference(double r) => r * 2 * PI;
}

abstract class circleMethod {
  double area(double r);

  double circumference(double r);
}

void main() {
  var circles = circle();
  circles.radius = double.parse(stdin.readLineSync()!);
  var result1 = circles.area(circles.radius);
  var result2 = circles.circumference(circles.radius);
  print('S = $result1');
  print('C = $result2');
}
