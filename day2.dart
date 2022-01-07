import 'dart:math';

/* 1/6/2022 - Day 2 - 100 Days of Code */
/* Twitter: @G4MR */
/* via dart lang run from terminal: `dart day2.dart` */

void main() {
  print(binaryToDecimal(101101));
}

int binaryToDecimal(int value) {
  var vString = value.toString().split('');
  int count = 0;
  num start = vString.length - 1;
  for(var n in vString) {
    count += int.parse(n) * (pow(2, start)).toInt();
    --start;
  }

  return count;
}