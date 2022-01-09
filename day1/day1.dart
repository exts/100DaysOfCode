/* 1/5/2022 - Day 1 - 100 Days of Code */
/* Twitter: @G4MR */

void main() {
  print(decimalToBinary(29));
}

int decimalToBinary(int value) {
  
  int remainder = value % 2;
  int expected = (value / 2).toInt();
  
  List<String> bin =[ remainder.toString() ];
  
  while(expected > 0) {
    remainder = expected % 2;
    expected = (expected / 2).toInt();
    bin.add(remainder.toString());
  }
  
  bin = (bin.reversed).toList();
  return int.parse(bin.join("").toString());
}