void main() {
  print(decimalToHex(16777215));
}

String decimalToHex(int val) {

  List<String> stored = [];

  int result = val ~/ 16;
  int remain = val % 16;

  stored.add(convertHexDecToHexChar(remain));

  // we need to store the result value so we can reuse it properly
  var current = result;
  while(current > 0) {
    result = current ~/ 16;
    remain = current % 16;

    // once we do the calculations, set value to current result so we
    // can continue the conversion properly w/ 'remain'
    current = result;
    stored.add(convertHexDecToHexChar(remain));
  }

  return stored.reversed.join('');
}

/**
 * Just used as a way to convert the missing characters A-F from decimal
 */
String convertHexDecToHexChar(int remain) {
  var replace = {
    10: "a", 11: "b", 12: "c", 13: "d", 14: "e", 15: "f"
  };

  if(remain > 9 && remain < 16) {
    return replace[remain]!.toUpperCase();
  } 

  return remain.toString();
}