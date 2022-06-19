import 'dart:io';

void main(List<String> args) {
  print("Enter principal: ");
  int principal = int.parse(stdin.readLineSync()!);
  print("Enter time: ");
  int time = int.parse(stdin.readLineSync()!);
  print("Enter rate: ");
  int rate = int.parse(stdin.readLineSync()!);

  double simpleInterest = (principal * rate * time) / 100;
  print("Simple interest is: $simpleInterest");
}
