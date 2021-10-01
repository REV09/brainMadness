import 'package:game_math/classes/domain/question.dart';
import 'package:game_math/game_number_generator.dart';

Future<List> generateCorrectAnswers() async {
  List<int> operators = generatorEasyMode();
  List<String> sings = signsGeneratorBase(15);
  List<dynamic> resultSet = List.empty(growable: true);

  for (int i = 0; i < sings.length; i++) {
    switch (sings.elementAt(i)) {
      case '+':
        final result =
            operators.elementAt(i * 2) + operators.elementAt(i * 2 + 1);
        resultSet.add(result);
        break;

      case '-':
        final result =
            operators.elementAt(i * 2) - operators.elementAt(i * 2 + 1);
        resultSet.add(result);
        break;

      case '*':
        final result =
            operators.elementAt(i * 2) * operators.elementAt(i * 2 + 1);
        resultSet.add(result);
        break;

      case '/':
        double result =
            (operators.elementAt(i * 2) / operators.elementAt(i * 2 + 1));
        String resultString = result.toStringAsFixed(3);
        result = double.parse(resultString);
        resultSet.add(result);
        break;

      default:
        resultSet.add(0);
    }
  }

  return resultSet;
}

List generateOptions(var correctAnswer) {
  final option1 = correctAnswer + 1;
  final option2 = correctAnswer - 1;
  final option3 = (correctAnswer / 2) + 1;
  var options = [correctAnswer, option1, option2, option3];
  options.shuffle();
  return options;
}

int correctOption(Question question, var correctAnswer) {
  String correctAnswerString = correctAnswer.toString();
  int correctOption = 0;
  if (question.getOption1() == correctAnswerString) {
    correctOption = 1;
  } else if (question.getOption2() == correctAnswerString) {
    correctOption = 2;
  } else if (question.getOption3() == correctAnswerString) {
    correctOption = 3;
  } else if (question.getOption4() == correctAnswerString) {
    correctOption = 4;
  }
  return correctOption;
}
