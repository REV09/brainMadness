import 'package:game_math/classes/connection_db.dart';
import 'package:mysql1/mysql1.dart';
import 'package:test/test.dart';

void main() {
  test('db_connection_test', () async {
    MySqlConnection dbConnection = await getConecction();
    expect(dbConnection, isNotNull);
  });
}
