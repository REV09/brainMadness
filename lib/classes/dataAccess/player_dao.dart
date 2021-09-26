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
    return rowsAffected;
  }
}
