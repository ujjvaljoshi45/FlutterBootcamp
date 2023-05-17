import 'question.dart';

class QuizBrain {
  int questionNo;
  int score;
  int finalScore = 0;
  List<Question> questions = [
    Question('Some cats are actually allergic to humans', true),
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true),
    Question('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true),
    Question('It is illegal to pee in the Ocean in Portugal.', true),
    Question(
        'No piece of square dry paper can be folded in half more than 7 times.',
        false),
    Question(
        'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        true),
    Question(
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        false),
    Question(
        'The total surface area of two human lungs is approximately 70 square metres.',
        true),
    Question('Google was originally called \"Backrub\".', true),
    Question(
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        true),
    Question(
        'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        true),
  ];
  QuizBrain() {
    questionNo = 0;
    score = 0;
  }

  void startNewQuiz(int key) {
    if (key == -1) {
      questionNo = 0;
      finalScore = score;
      score = 0;
    }
  }

  int nextQuestion() {
    if (questionNo < questions.length - 1) return (questionNo++);
    startNewQuiz(-1);
    return -1;
  }

  String getQuestion() {
    return questions[questionNo].question;
  }

  bool checkAnswer(userAnswer) {
    if (userAnswer == questions[questionNo].answer) {
      score += 1;
      return true;
    } else {
      return false;
    }
  }

  int getScore() {
    return finalScore;
  }
}
