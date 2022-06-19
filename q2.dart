import 'dart:io';
import 'dart:math';

bool isPrime(int n) {
  if (n < 2) return false;
  if (n == 2) return true;
  if (n % 2 == 0) return false;
  for (int i = 3; i <= sqrt(n); i += 2) {
    if (n % i == 0) return false;
  }
  return true;
}

void main(List<String> args) {
  print("Enter a number to check its primality");
  int num = int.parse(stdin.readLineSync()!);
  print("Is $num prime: ${isPrime(num)}");
}