import 'dart:io';

void main(List<String> args) {
  print("Enter 1st number: ");
  int a = int.parse(stdin.readLineSync()!);
  print("Enter 2nd number: ");
  int b = int.parse(stdin.readLineSync()!);

  List<int> sumAndProduct = getProductAndSum(a, b);

  print("The sum is: ${sumAndProduct[0]}\nThe product is: ${sumAndProduct[1]}");
}

List<int> getProductAndSum(int a, int b) {
  int sum = a + b;
  int product = a * b;

  return [sum, product];
}
