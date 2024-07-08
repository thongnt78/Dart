import 'dart:io';
import 'dart:convert';
import 'dart:math';

void main() {
  var numbers = [1, 3, 4, 5, 6, 7, 8, 10, 24, 43, 21, 54, 76, 90];
  showListPrime(numbers);
}

bool checkPrime(int n) {
  if (n <= 2)
    return false;
  else {
    int bound = sqrt(n).toInt();
    for (int i = 2; i < bound; i++) if (n % i == 0) return false;
  }
  return true;
}

void showListPrime(List<int> numbers) {
  int counter = 0;
  print('Các phần tử là số nguyên tố: ');
  for (var number in numbers) {
    if (checkPrime(number)) {
      print(number);
      counter++;
    }
  }
  print('Có $counter số nguyên tố.');
}
