import 'package:cross_platform/question.dart';

class QuizBrain {
  int _questionNumber = 0;

  final List<Question> _questionBank = [
    Question('Mèo là chất lỏng', false),
    Question('Chó là bạn', true),
    Question('Chuối chưa chín có màu xanh', true),
    Question('Kim cương là vật chất cứng nhất trên trái đất', true),
    Question('Mặt trăng có kích thước lớn hơn trái đất', false),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].question;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].answer;
  }
}
