import 'package:game_math/classes/domain/player.dart';
import 'package:test/test.dart';

void main() {
  test('set/get_name_test', () {
    Player player = Player();
    player.setName("Test name");
    expect(player.getName(), "Test name");
  });

  test('set/get_difficult_test', () {
    Player player = Player();
    player.setDifficult("Easy");
    expect(player.getDifficult(), "Easy");
  });

  test('set/get_timeElapsed_test', () {
    Player player = Player();
    player.setTime(17.99);
    expect(player.getTime(), 17.99);
  });

  test('set/get_correct_answers', () {
    Player player = Player();
    player.setCorrectAnswers(9);
    expect(player.getCorrectAnswers(), 9);
  });

  test('set/get_incorrect_answers', () {
    Player player = Player();
    player.setIncorrectAnswers(9);
    expect(player.getIncorrectAnswers(), 9);
  });
}
