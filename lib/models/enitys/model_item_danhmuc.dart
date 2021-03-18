import 'package:json_annotation/json_annotation.dart';
part 'model_item_danhmuc.g.dart';
@JsonSerializable()
class ItemDanhmuc{
  int ?id_item;
  String ?name_item;
  int ?price_item;
  String ?intro_item;
  String ?image_item;
  int ?id_danhmuc;
  ItemDanhmuc({this.id_item,this.name_item,this.price_item,this.intro_item,this.image_item,this.id_danhmuc});
  factory ItemDanhmuc.fromJson(Map<String, dynamic> map)=>_$ItemDanhmucFromJson(map);
  toJson()=>_$ItemDanhmucToJson(this);
}