float grade = random(0, 101);
if (grade>=94) {
  println("A");
} else if (grade >= 89 && grade < 94) {
  println("A-");
} else if (grade >= 87 && grade < 89) {
  println("B+");
} else if (grade >= 83 && grade < 87) {
  println("B");
} else if (grade >= 80 && grade < 83) {
  println("B-");
} else if (grade >= 77 && grade < 80) {
  println("C+");
} else if (grade >= 73 && grade < 77) {
  println("C");
} else if (grade >= 70 && grade < 73) {
  println("C-");
} else if (grade >= 67 && grade < 70) {
  println("D+");
} else if (grade >= 63 && grade < 67) {
  println("D");
} else if (grade >= 60 && grade < 62) {
  println("D-");
} else {
  println("F");
}