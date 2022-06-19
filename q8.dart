import 'dart:io';

void main(List<String> args) {
  print("Enter 1st number: ");
  int a = int.parse(stdin.readLineSync()!);
  print("Enter 2nd number: ");
  int b = int.parse(stdin.readLineSync()!);
  List<num> quotientAndRemainder = getQuotientAndRemainder(a, b);
  print(
      "The quotient is: ${quotientAndRemainder[0]}  and the remainder is: ${quotientAndRemainder[1]} ");
}

List<num> getQuotientAndRemainder(int a, int b) {
  num quotient = a ~/ b;
  num remainder = a % b;

  return [quotient, remainder];
}
