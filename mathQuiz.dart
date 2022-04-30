import "dart:io";

class MathQuestion {
  MathQuestion(String questionText, int answer) {
    this.questionText = questionText;
    this.answer = answer;
  }

  String? questionText;
  int? answer;
}

double prompt(String? msg) {
  print(msg);
  double myNum = double.parse(stdin.readLineSync()!);
  return myNum;
}

void main() {
  List<MathQuestion> questions = [
    MathQuestion("10 * 4", 40),
    MathQuestion("50 - 35", 15),
    MathQuestion("500 + 300", 800),
  ];

  int count = 0;
  for (MathQuestion mathQuestion in questions) {
    double answer = prompt(mathQuestion.questionText);
    if (answer == mathQuestion.answer) {
      print("right");
      count++;
    } else {
      print("wrong. The right answer is ${mathQuestion.answer}");
    }
  }

  print(
      "You score is ${count / questions.length * 100} and you do $count question right out of ${questions.length}.");
}
