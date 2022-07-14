import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class Connection {
  static Database? _db;

  static Future<Database?> get() async {
    if (_db == null) {
      var path = join(await getDatabasesPath(), 'to_do');

      _db = await openDatabase(
        path,
        version: 1,
        onCreate: (db, v) {
          db.execute('''
            CREATE TABLE to_do (
              id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT
              ,title VARCHAR(50) NOT NULL
              ,description VARCHAR(255) NOT NULL
            );
          ''');
        },
      );
    }

    return _db;
  }
}
