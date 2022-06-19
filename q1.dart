void main(List<String> args) {
  final String stringToPrint = 'Hello Sunway';

  // using for loop
  print("\nUsing for loop\n");
  for (int i = 0; i < 3; i++) {
    print(stringToPrint);
  }

  // using while loop
  print("\nUsing while loop\n");
  int cnt = 0;
  while (cnt++ < 3) {
    print(stringToPrint);
  }

  // using do while
  print("\nUsing do while loop\n");
  int cnt2 = 0;
  do {
    print(stringToPrint);
  } while (++cnt2 < 3);
}
