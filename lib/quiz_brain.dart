import 'question.dart';

class QuizBrain {
  int qn = 0;
  List<Question> qB = [
    Question('59 has only two factors', true),
    Question('7 and 11 are composite and twin prime numbers', false),
    Question('2 is the smallest prime number', true),
    Question('36 has 9 factors', true),
    Question('11 is a factor of 121', true),
    Question('A prime number has more than 2 factors', false),
    Question(
        'The factor of a number is always less than or equal to the number',
        true),
    Question('Every number is not a factor of itself', false),
    Question('1 is a unique number', true),
    Question('15 and 17 are twin prime numbers', false),
  ];
  void nextQuestion() {
    if (qn < qB.length - 1) {
      qn++;
    }
  }

  String getQuestionText() {
    return qB[qn].ques;
  }

  bool getCorrectAnswer() {
    return qB[qn].ans;
  }

  bool isFinished() {
    if (qn >= qB.length - 1) {
      return true;
    } else
      return false;
  }

  void reset() {
    qn = 0;
  }
}
