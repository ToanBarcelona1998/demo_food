import 'dart:io';

import 'package:flutter/services.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class MyDatabase{
  Database ?_database;
  static MyDatabase ?_myDatabase;

  factory MyDatabase(){
    if(_myDatabase==null){
      _myDatabase=MyDatabase._();
    }
    return _myDatabase!;
  }
  MyDatabase._();


  _initDatabase() async{
    var databasePath=await getDatabasesPath();
    var path=join(databasePath,"MyDatabase.db");

    var checkExists=await databaseExists(path);

    if(!checkExists){
      try{
        await Directory(dirname(path)).create(recursive: true);
      }catch (e){
        print(e.toString());
      }

      ByteData data=await rootBundle.load(join("assets/database","food_database.db"));
      List<int> bytes=data.buffer.asUint8List(data.offsetInBytes,data.lengthInBytes);
      await File(path).writeAsBytes(bytes,flush: true);
    }else{
      print("Opening exists database");
    }
     _database=await openDatabase(path);
  }

  Future<Database> get database async{
    if(_database!=null){
      return _database!;
    }
    await _initDatabase();
    return _database!;
  }
}