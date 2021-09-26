import 'package:game_math/classes/domain/player.dart';

abstract class IPlayerDAO {
  Future<int> registerNewPlayer(Player player);
  Future<List<Player>> showScoreboard();
}
