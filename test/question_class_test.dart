import 'package:game_math/classes/domain/question.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('set/get_question_test', () {
    Question question = Question();
    question.setQuestion("¿Cuanto es 9 + 15?");
    expect(question.getQuestion(), "¿Cuanto es 9 + 15?");
  });

  test('set/get_option1_test', () {
    Question question = Question();
    question.setOption1("24");
    expect(question.getOption1(), "24");
  });

  test('set/get_option2_test', () {
    Question question = Question();
    question.setOption2("6");
    expect(question.getOption2(), "6");
  });

  test('set/get_option3_test', () {
    Question question = Question();
    question.setOption3("23");
    expect(question.getOption3(), "23");
  });

  test('set/get_option4_test', () {
    Question question = Question();
    question.setOption4("14");
    expect(question.getOption4(), "14");
  });

  test('set/get_userAnswer_test', () {
    Question question = Question();
    question.setUserAnswer(3);
    expect(question.getUserAnswer(), 3);
  });

  test('set/get_correctAnswer_test', () {
    Question question = Question();
    question.setCorrectAnswer(4);
    expect(question.getCorrectAnswer(), 4);
  });
}
