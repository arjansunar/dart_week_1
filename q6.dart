import 'dart:io';

void main(List<String> args) {
  print("Enter salary: ");
  int salary = int.parse(stdin.readLineSync()!);
  print("Enter year of service: ");
  int yearOfService = int.parse(stdin.readLineSync()!);

  print("The bonus is: ${getNetBonus(salary, yearOfService)}");
}

double getNetBonus(int salary, int yearOfService) {
  double totalAmount = 0;
  // applicable if service is more than 5 yrs
  int bonusRate = 5;

  int currentYear = DateTime.now().year;
  if (yearOfService + 5 < currentYear) {
    totalAmount += salary + salary * (bonusRate / 100);
  }
  return totalAmount;
}
