import 'dart:io';

void main() {
  stdout.write("Enter a number: ");
  double number = double.parse(stdin.readLineSync()!);

  if (number > 0) {
    print("$number is a Positive number.");
  } else if (number < 0) {
    print("$number is a Negative number.");
  } else {
    print("The number is Zero.");
  }
}
