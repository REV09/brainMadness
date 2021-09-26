import 'package:mysql1/mysql1.dart';

Future<MySqlConnection> getConecction() async {
  ConnectionSettings settings = ConnectionSettings(
      host: '127.0.0.1',
      port: 3306,
      user: 'commonUser',
      password: '123456',
      db: 'brainMadness');

  return await MySqlConnection.connect(settings);
}
