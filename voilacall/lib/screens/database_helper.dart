import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static Database? _database;
  static const String tableName = 'users';

  static Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await initDatabase();
    return _database!;
  }

  static Future<Database> initDatabase() async {
    final path = await getDatabasesPath();
    final databasePath = join(path, 'app_database.db');
    return openDatabase(
      databasePath,
      onCreate: (db, version) {
        return db.execute(
          "CREATE TABLE $tableName(username TEXT PRIMARY KEY, email TEXT, password TEXT)",
        );
      },
      version: 1,
    );
  }

  static Future<void> insertUser(Map<String, dynamic> user) async {
    final Database db = await database;
    await db.insert(
      tableName,
      user,
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  // Method to get the database path
  static Future<String> getDatabasePath() async {
    final path = await getDatabasesPath();
    return join(path, 'app_database.db');
  }
}
