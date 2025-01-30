import 'dart:io';

void main() {
  List<double> marks = [];

  int subjects = 5;

  for (int i = 1; i <= subjects; i++) {
    stdout.write("Enter marks for subject $i: ");
    double mark = double.parse(stdin.readLineSync()!);
    marks.add(mark);
  }

  double totalMarks = marks.reduce((a, b) => a + b);

  double maxMarks = subjects * 100;

  
  double percentage = (totalMarks / maxMarks) * 100;

  print("\nTotal Marks Obtained: $totalMarks");
  print("Percentage: $percentage%");
}
