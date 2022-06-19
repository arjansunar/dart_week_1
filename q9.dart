void main(List<String> args) {
  // swap two numbers
  int a = 5;
  int b = 9;
  print("a: $a, b: $b");
  a = a + b;
  b = a - b;
  a = a - b;
  print("Swapping numbers");
  print("a: $a, b: $b");
}
