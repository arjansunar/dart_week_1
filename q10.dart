import 'dart:math';

void main(List<String> args) {
  List<int> a = [1, 0, 2, 3, 5, 8, 13, 21, 34, 55, 89];

  print("The smallest number is: ${smallestNumberInList(a)}");
  print("The largest number is: ${largestNumberInList(a)}");
  print("The numbers greater than 8 are:\n${printNumbersGreaterThan8(a)}");
  print('The numbers smaller than 5 are:\n${printNumbersSmallerThan5(a)}');
  print('The sum of all numbers is:\n${sumOfAllElements(a)}');
  print("All odd numbers are:\n${printOddNumbers(a)}");
  print("All even numbers are:\n${printEvenNumbers(a)}");
  print("All prime numbers are:\n${printPrimeNumbers(a)}");


}

int smallestNumberInList(List<int> arr) {
  int smallest = arr[0];
  for (int el in arr) {
    if (smallest > el) {
      smallest = el;
    }
  }

  return smallest;
}

int largestNumberInList(List<int> arr) {
  int largest = arr[0];
  for (int el in arr) {
    if (largest < el) {
      largest = el;
    }
  }

  return largest;
}

String printNumbersGreaterThan8(List<int> arr) {
  var output = "";
  for (int el in arr) {
    if (el > 8) output += "$el, ";
  }
  return output;
}

String printNumbersSmallerThan5(List<int> arr) {
  var output = "";
  for (int el in arr) {
    if (el < 8) output += "$el, ";
  }
  return output;
}

int sumOfAllElements(List<int> arr) {
  return arr.reduce((value, element) => value + element);
}

String printOddNumbers(List<int> arr) {
  var output = "";
  for (int el in arr) {
    if (el == 0) continue;
    if (el % 2 == 1) output += "$el, ";
  }
  return output;
}

String printEvenNumbers(List<int> arr) {
  var output = "";
  for (int el in arr) {
    if (el == 0) continue;
    if (el % 2 == 0) output += "$el, ";
  }
  return output;
}

String printPrimeNumbers(List<int> arr) {
  var output = "";
  for (int el in arr) {
    if (isPrime(el)) {
      output += "$el, ";
    }
  }
  return output;
}

bool isPrime(int n) {
  if (n < 2) return false;
  if (n == 2) return true;
  if (n % 2 == 0) return false;
  for (int i = 3; i <= sqrt(n); i += 2) {
    if (n % i == 0) return false;
  }
  return true;
}
