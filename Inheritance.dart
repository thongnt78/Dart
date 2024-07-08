import 'dart:io';

class Rectangle {
  int x = 0;
  int y = 0;

  // Rectangle(this.x, this.y);

  set ValuesOfX(int x) => this.x = x;

  int get ValuesX {
    return x;
  }

  set ValuesOfY(int y) => this.y = y;

  int get ValuesY {
    return y;
  }

  int Area(int x, int y) => x * y;

  int Circumference(int x, int y) => (x + y) * 2;
}

class VRetangle extends Rectangle {
  int h = 0;

  set ValuesOfH(int h) => this.h = h;

  int get ValuesH {
    return h;
  }

  int AreaAround(int x, int y, int h) => (x + y) * 2 * h;

  int AreaFull(int x, int y, int h) => (x + y) * 2 * h + 2 * x * y;

  int volume(int x, int y, int h) => x * y * h;
}

void main() {
  Rectangle rectangle = Rectangle();
  VRetangle vRetangle = VRetangle();
  print('Vui lòng nhập x: ');
  rectangle.ValuesOfX = int.parse(stdin.readLineSync()!);
  print('Vui lòng nhập y: ');
  rectangle.ValuesOfY = int.parse(stdin.readLineSync()!);
  print('S = ${rectangle.Area(rectangle.ValuesX, rectangle.ValuesY)}');
  print('C = ${rectangle.Circumference(rectangle.ValuesX, rectangle.ValuesY)}');

  print('Vui lòng nhập h: ');
  vRetangle.ValuesOfH = int.parse(stdin.readLineSync()!);
  print('Diện tích xung quanh: ${vRetangle.AreaAround(rectangle.ValuesX, rectangle.ValuesY, vRetangle.ValuesH)}');
  print('Diện tích toàn phần: ${vRetangle.AreaFull(rectangle.ValuesX, rectangle.ValuesY, vRetangle.ValuesH)}');
  print('Thể tích: ${vRetangle.volume(rectangle.ValuesX, rectangle.ValuesY, vRetangle.ValuesH)}');
}
