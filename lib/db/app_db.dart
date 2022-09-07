import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:tailor_measurement/models/cap.dart';
import 'package:tailor_measurement/models/pant.dart';
import 'package:tailor_measurement/models/shirt.dart';
import 'package:tailor_measurement/models/skirt.dart';
import 'package:tailor_measurement/models/user.dart';

class AppDataBase {
  static final AppDataBase instance = AppDataBase._init();

  static Database? _database;

  AppDataBase._init();

  Future<Database?> get database async {
    if (_database != null) return _database;

    _database = await _initDB('appp.db');

    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);
    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future _createDB(Database db, int version) async {
    final idType = "INTEGER PRIMARY KEY AUTOINCREMENT";
    final boolType = "BOOLEAN NOT NULL";
    final intType = "INTEGER NOT NULL";
    final textType = "TEXT NOT NULL";

    await db.execute(''' 
    CREATE TABLE ${capsTable} (
      ${CapFields.id} $idType,
      ${CapFields.customerName} $textType,
      ${CapFields.circumference} $textType,
      ${CapFields.customerNumber} $textType,
      ${CapFields.capType} $textType,
      ${CapFields.isFav} $boolType,
      ${CapFields.createdAt} $textType
    )
    ''');

    await db.execute('''
CREATE TABLE ${pantsTable} (
  ${PantFields.id} $idType,
  ${PantFields.customerName} $textType,
  ${PantFields.customerNumber} $textType,
  ${PantFields.body} $intType,
  ${PantFields.waist} $intType,
  ${PantFields.tight} $intType,
  ${PantFields.length} $intType,
  ${PantFields.bottom} $intType,
  ${PantFields.isFav} $boolType,
  ${PantFields.createdAt} $textType
)
''');

    await db.execute('''
CREATE TABLE ${shirtsTable} (
  ${ShirtFields.id} $idType,
    ${ShirtFields.customerName} $textType,
  ${ShirtFields.customerNumber} $textType,
  ${ShirtFields.isFav} $boolType,
  ${ShirtFields.body} $intType,
  ${ShirtFields.sleeve} $intType,
  ${ShirtFields.chest} $intType,
  ${ShirtFields.neck} $intType,
  ${ShirtFields.shoulder} $intType,
  ${ShirtFields.createdAt} $textType
)
''');
    await db.execute('''
CREATE TABLE ${skirtsTable} (
  ${SkirtFields.id} $idType,
    ${SkirtFields.customerName} $textType,
  ${SkirtFields.customerNumber} $textType,
  ${SkirtFields.isFav} $boolType,
  ${SkirtFields.body} $intType,
  ${SkirtFields.waist} $intType,
  ${SkirtFields.hip} $intType,
  ${SkirtFields.length} $intType,
  ${ShirtFields.createdAt} $textType
)
''');
    await db.execute('''
CREATE TABLE ${usersTable} (
  ${UserFields.id} $idType,
    ${UserFields.username} $textType,
  ${UserFields.pin} $intType
)
''');
  }

  Future<Cap> createCap(Cap cap) async {
    final db = await instance.database;
    final id = await db!.insert(capsTable, cap.toJson());

    return cap.copy(id: id);
  }

  Future<List<Cap>> readCap() async {
    final db = await instance.database;
    final result = await db!.query(capsTable);

    return result.map((json) => Cap.fromJson(json)).toList();
  }

  Future<User> createUser(User user) async {
    final db = await instance.database;
    final id = await db!.insert(usersTable, user.toJson());

    return user.copy(id: id);
  }

  Future<User> readUser(int pin) async {
    final db = await instance.database;
    final maps = await db!.query(usersTable,
        columns: UserFields.value,
        where: '${UserFields.pin} = ?',
        whereArgs: [pin]);
    if (maps.isNotEmpty) {
      return User.fromJson(maps.first);
    } else {
      throw Exception("User not found");
    }
  }

  Future<int> update(User user) async {
    final db = await instance.database;
    return db!.update(usersTable, user.toJson(),
        where: '${UserFields.id} = ?', whereArgs: [user.id]);
  }

  Future close() async {
    final db = await instance.database;
    db!.close();
  }
}
