import 'dart:io';

void main(List<String> args) {
  print("Enter the total electricity units: ");
  int totalUnits = int.parse(stdin.readLineSync()!);
  print("The total bill for $totalUnits is: ${getTotalBill(totalUnits)} ");
}

int getTotalBill(int totalUnits) {
  int totalBill = 0;
  // first 100 no charge
  if (totalUnits <= 100) {
    return totalBill;
  }
  totalUnits -= 100;
  // next 100 5 per unit
  if (totalUnits > 100) {
    totalBill += 100 * 5;
  }
  else if (totalUnits > 0) {
    totalBill += totalUnits * 5;
  }
  totalUnits -= 100;
  // after 200 10 per unit
  if (totalUnits > 0) {
    totalBill += totalUnits * 10;
  }

  return totalBill;
}
