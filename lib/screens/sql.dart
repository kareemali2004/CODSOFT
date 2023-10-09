import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class sqlDp {
  static Database? _db;
  Future<Database?> get db async {
    if (_db == null) {
      _db = await initalDb();
      return _db;
    } else
      return _db;
  }

  initalDb() async {
    String dateBasePath = await getDatabasesPath();
    String path = join(dateBasePath, 'kareem.db');
    Database myDb = await openDatabase(path,
        onCreate: _oncreate, version: 1, onUpgrade: _onUpgrade);
    return myDb;
  }

  _onUpgrade(Database db, int oldversion, int newversion) {
    print('on upgrade');
  }

  _oncreate(Database db, int version) async {
    await db.execute('''
     CREATE TABLE "TODO"(
      "id" INTEGER PRIMARY KEY AUTOINCREMENT,
      "title" TEXT,
       "note" TEXT
     )
''');
    print('on create');
  }

  Future<List<Map<String, dynamic>>> readDb(String sql) async {
    Database? mydb = await db;
    List<Map<String, dynamic>> response = await mydb!.rawQuery(sql);
    return response;
  }

  Future<int> insetDb(String sql) async {
    Database? mydb = await db;
    int response = await mydb!.rawInsert(sql);
    return response; // Return the number of rows affected.
  }

  Future updateDb(String sql) async {
    Database? mydb = await db;
    int response = await mydb!.rawUpdate(sql);
    return response;
  }

  deleteDb(String sql) async {
    Database? mydb = await db;
    int response = await mydb!.rawDelete(sql);
    return response;
  }

  Future myDeleteDtaBase() async {
    String dateBasePath = await getDatabasesPath();
    String path = join(dateBasePath, 'kareem.db');
    await deleteDatabase(path);
    _db = null;
  }
}