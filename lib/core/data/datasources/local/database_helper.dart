import 'dart:async';

import 'package:sqflite/sqflite.dart';
// path нужен для join в строке 23, подсвечивало синим
// ignore: depend_on_referenced_packages
import 'package:path/path.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  factory DatabaseHelper() => _instance;

  static Database? _database;

  DatabaseHelper._internal();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    String path = join(await getDatabasesPath(), 'dementiapp_database.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute(
      'CREATE TABLE tasks(id TEXT, text TEXT, importance TEXT, done INTEGER, deadline TEXT, last_updated_by TEXT, created_at TEXT, changed_at TEXT, color TEXT)',
    );
    await db.execute(
      'CREATE TABLE metadata(id INTEGER PRIMARY KEY, revision INTEGER)',
    );
    await _initializeMetadata(db);
  }

  Future<void> _initializeMetadata(Database db) async {
    await db.insert('metadata', {'id': 1, 'revision': 0});
  }

  Future<List<String>> getTableNames() async {
    final db = await database;
    final List<Map<String, dynamic>> tables =
        await db.rawQuery("SELECT name FROM sqlite_master WHERE type='table'");
    return tables.map((table) => table['name'] as String).toList();
  }

  Future<List<Map<String, dynamic>>> getRev() async {
    final db = await database;

    final List<Map<String, dynamic>> rev =
        await db.query('metadata', where: "id = 1");
    return rev;
  }
}
