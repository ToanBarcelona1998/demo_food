import 'package:food_app/models/database/database.dart';
import 'package:food_app/models/enitys/model_danhmuc.dart';
import 'package:sqflite/sqflite.dart';

class DanhmucService{
  static DanhmucService ?_danhmucService;
  factory DanhmucService(){
    if(_danhmucService==null){
      _danhmucService=DanhmucService._();
    }
    return _danhmucService!;
  }
  DanhmucService._();
  Future<List<Danhmuc>>  getAllDanhmuc()async{
    List<Danhmuc> listDm=[];
    Database database=await MyDatabase().database;
    
    List<Map<String,dynamic>> list=await database.rawQuery("Select * From danhmuc");
    list.forEach((element) {
      Danhmuc danhmuc=Danhmuc.fromJson(element);
      listDm.add(danhmuc);
    });
    return listDm;
  }
}