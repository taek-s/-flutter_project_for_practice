import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DBConnection {
  static Database? _database;

  static Future<Database> get database async {
    if (_database != null) return _database!;

    // 데이터베이스 경로 가져오기
    String path = join(await getDatabasesPath(), 'practice01.db');

    // 데이터베이스 열기 또는 생성
    _database = await openDatabase(
      path,
      version: 1,
      onCreate: _createDatabase,
    );
    return _database!;
  }

  static Future<void> _createDatabase(Database db, int version) async {
    await db.execute(
      'CREATE TABLE user(id TEXT PRIMARY KEY, name TEXT, password TEXT)',
    );
  }

  Future<void> insertUserData({
    required String id,
    required String password,
    required String name,
  }) async {
    // 유저 데이터 삽입
    await _database!.insert(
      'user',
      {id: id, name: name, password: password},
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }
}
