import 'package:food_app/models/database/database.dart';
import 'package:food_app/models/enitys/model_item_danhmuc.dart';
import 'package:sqflite/sqflite.dart';

class ItemDanhmucService{
  static ItemDanhmucService ?_itemService;
  factory ItemDanhmucService(){
    if(_itemService==null){
      _itemService=ItemDanhmucService._();
    }
    return _itemService!;
  }
  ItemDanhmucService._();

  Future<List<ItemDanhmuc>> getItemDanhmuc(int id_danhmuc) async{
    List<ItemDanhmuc> listItem=[];
    Database database=await MyDatabase().database;
    List<Map<String,dynamic>> listMap=await database.rawQuery("Select * From item_danhmuc where id_danhmuc=$id_danhmuc");
    print(listMap.toString());

    listMap.forEach((element) {
      ItemDanhmuc itemDanhmuc=ItemDanhmuc.fromJson(element);
      listItem.add(itemDanhmuc);
    });
    return listItem;
  }
}