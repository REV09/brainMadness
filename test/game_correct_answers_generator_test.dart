import 'package:game_math/classes/domain/question.dart';
import 'package:game_math/game_answer_options_generator.dart';
import 'package:test/test.dart';

void main() {
  test('generate_correct_answers_test', () async {
    List<dynamic> results = await generateCorrectAnswers();
    expect(results.length, 15);
  });

  test('generate_options_test', () {
    List resultOptions = generateOptions(6);
    expect(resultOptions.length, 4);
  });

  test('correct_option_test', () {
    List result = generateOptions(5);
    Question question = Question();
    question.setQuestion("7 - 2");
    question.setOption1(result.elementAt(0).toString());
    question.setOption2(result.elementAt(1).toString());
    question.setOption3(result.elementAt(2).toString());
    question.setOption4(result.elementAt(3).toString());
    question.setCorrectAnswer(correctOption(question, 5));
    expect(question.getOption1(), isNotNull);
    expect(question.getOption2(), isNotNull);
    expect(question.getOption3(), isNotNull);
    expect(question.getOption4(), isNotNull);
    expect(question.getCorrectAnswer(), isNotNull);
  });
}
