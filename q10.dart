void main(List<String> args) {
  List<int> a = [1, 0, 2, 3, 5, 8, 13, 21, 34, 55, 89];

  print("The smallest number is: ${smallestNumberInList(a)}");
  print("The largest number is: ${largestNumberInList(a)}");
  print("The numbers greater than 8 are:\n${printNumbersGreaterThan8(a)}");
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
