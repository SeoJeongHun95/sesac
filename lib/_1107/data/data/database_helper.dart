import 'dart:async';
import 'dart:io';

// ignore: depend_on_referenced_packages
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static final DatabaseHelper instance = DatabaseHelper._init();

  static Database? _database;

  DatabaseHelper._init();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB('restaurant.db');
    return _database!;
  }

  Future<void> deleteDatabase() async {
    final directory = await getApplicationDocumentsDirectory();
    final path = join(directory.path, 'restaurant.db');

    // 데이터베이스 파일 삭제
    final file = File(path);
    if (await file.exists()) await file.delete();
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();

    final path = join(dbPath, filePath);

    return await openDatabase(
      path,
      version: 1,
      onCreate: _createDB,
    );
  }

  Future _createDB(Database db, int version) async {
    await db.execute('''
      CREATE TABLE restaurant (
        restaurant_number INTEGER PRIMARY KEY AUTOINCREMENT,  -- 자동 증가하는 기본키
        restaurant_name TEXT NOT NULL,  -- 레스토랑 이름 (비어있을 수 없음)
        restaurant_note TEXT,  -- 레스토랑에 대한 설명 (비어있을 수 있음)
        restaurant_score INTEGER  -- 레스토랑의 평점 (정수 값)
      )
    ''');
  }

  Future<List<Map<String, dynamic>>> fetchAllRestaurants() async {
    final db = await instance.database;

    return await db.query('restaurant');
  }

  Future<void> insertSampleData() async {
    final db = await instance.database;

    await db.insert('restaurant', {
      'restaurant_name': '제주육돈가',
      'restaurant_note': '찌개류와 비빔밥이 있음',
      'restaurant_score': 5,
    });

    await db.insert('restaurant', {
      'restaurant_name': '호박식당',
      'restaurant_note': '매일 바뀌는 한정식 메뉴라고 되어있지만 거의안바뀜',
      'restaurant_score': 5,
    });

    await db.insert('restaurant', {
      'restaurant_name': '샐러디',
      'restaurant_note': '샐러드 전문점',
      'restaurant_score': 5,
    });
  }

  Future close() async {
    final db = _database;

    if (db != null) {
      await db.close();
    }
  }
}
