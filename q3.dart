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
  // looping from 1 to 100
  String primesOut = "";
  for (int i = 1; i <= 100; i++) {
    if (isPrime(i)) primesOut += "$i, ";
  }
  print("Primes between 1 to 100\n [$primesOut]");
}
