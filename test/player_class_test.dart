import 'package:game_math/classes/player.dart';
import 'package:test/test.dart';

void main() {
  test('set/get_name_test', () {
    Player player = Player();
    player.setName("Test name");
    expect(player.getName(), "Test name");
  });

  test('set/get_scoreObtained_test', () {
    Player player = Player();
    player.setScore(19.52);
    expect(player.getScore(), 19.52);
  });

  test('set/get_timeElapsed_test', () {
    Player player = Player();
    player.setTime(17.99);
    expect(player.getTime(), 17.99);
  });
}
