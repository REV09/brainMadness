import 'package:game_math/classes/dataAccess/Interfaces/i_player_dao.dart';
import 'package:game_math/classes/domain/connection_db.dart';
import 'package:game_math/classes/domain/player.dart';
import 'package:mysql1/mysql1.dart';

class PlayerDAO implements IPlayerDAO {
  @override
  Future<int> registerNewPlayer(Player player) async {
    final dbConnection = await getConecction();
    Results result = await dbConnection.query(
        "INSERT INTO scoreboard"
        "(playerName, difficult, correctAnswers, incorrectAnswers, timeElapsed)"
        "VALUES (?,?,?,?,?)",
        [
          player.getName(),
          player.getDifficult(),
          player.getCorrectAnswers(),
          player.getIncorrectAnswers(),
          player.getTime()
        ]);
    int rowsAffected = result.affectedRows!;
    dbConnection.close();
    return rowsAffected;
  }

  @override
  Future<List<Player>> showScoreboard() async {
    final dbConnection = await getConecction();
    List<Player> players = List.empty(growable: true);
    final results = await dbConnection.query("SELECT * FROM scoreboard");

    for (var key in results) {
      Player player = Player();
      player.setName(key.fields["playerName"]);
      player.setDifficult(key.fields["difficult"]);
      player.setCorrectAnswers(key.fields["correctAnswers"]);
      player.setIncorrectAnswers(key.fields["incorrectAnswers"]);
      player.setTime(key.fields["timeElapsed"]);
      players.add(player);
    }

    dbConnection.close();
    return players;
  }
}
