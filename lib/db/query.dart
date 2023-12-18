// import 'package:path/path.dart';
// import 'package:sqflite/sqflite.dart';
//
// class DBHelper {
//   static late Database _db;
//
//   Future<Database> get db async {
//     if (_db != null) {
//       return _db;
//     }
//     _db = await initDB();
//     return _db;
//   }
//
//   initDB() async {
//     String databasesPath = await getDatabasesPath();
//     String path = join(databasesPath, 'example.db');
//     return await openDatabase(path, version: 1, onCreate: _onCreate);
//   }
//
//   _onCreate(Database db, int version) async {
//     await db.execute('''
//       CREATE TABLE User (
//       ID INT AUTO_INCREMENT PRIMARY KEY,
//       Name VARCHAR(50),
//       ); ''');
//
//     await db.execute(''' Create
//     table Statistic (
//         id Int Auto_increment,
//         attempt int Auto_increment,
//         `time` varchar(45),
//       ); ''');
//
//
//   }
//
//
// }
