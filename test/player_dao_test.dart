import 'package:game_math/classes/dataAccess/player_dao.dart';
import 'package:game_math/classes/domain/player.dart';
import 'package:test/test.dart';

void main() {
  test('register_new_player_dao_test', () async {
    PlayerDAO playerDAO = PlayerDAO();
    Player player = Player();

    player.setName("Test name2");
    player.setDifficult("normal");
    player.setTime(39.99);
    player.setCorrectAnswers(6);
    player.setIncorrectAnswers(4);
    int result = await playerDAO.registerNewPlayer(player);

    expect(result, 1);
  });

  test('show_scoreboard_test', () async {
    PlayerDAO playerDAO = PlayerDAO();
    List<Player> players = await playerDAO.showScoreboard();

    Player player1 = Player(
        playerName: "Test name",
        difficult: "Easy",
        correctAnswers: 9,
        incorrectAnswers: 1,
        timeElapsed: 49.99);

    Player player2 = Player(
        playerName: "Test name2",
        difficult: "normal",
        correctAnswers: 6,
        incorrectAnswers: 4,
        timeElapsed: 39.99);

// if you compare directly players.elementAt(x) with playerX you're going to
// get always false, so use toString to compare as a String and solve this.
    expect(players.elementAt(0).toString(), player1.toString());
    expect(players.elementAt(1).toString(), player2.toString());
  });
}
