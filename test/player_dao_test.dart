import 'package:game_math/classes/dataAccess/player_dao.dart';
import 'package:game_math/classes/domain/player.dart';
import 'package:test/test.dart';

void main() {
  test('register_new_player_dao_test', () async {
    PlayerDAO playerDAO = PlayerDAO();
    Player player = Player();
    player.setName("Test name");
    player.setDifficult("Easy");
    player.setTime(49.99);
    player.setCorrectAnswers(9);
    player.setIncorrectAnswers(1);
    int result = await playerDAO.registerNewPlayer(player);
    expect(result, 1);
  });
}
