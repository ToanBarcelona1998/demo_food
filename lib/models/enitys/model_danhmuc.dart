import 'package:json_annotation/json_annotation.dart';
part 'model_danhmuc.g.dart';
@JsonSerializable()
class Danhmuc{
  int ?id_danhmuc;
  String ?name_danhmuc;
  String ?image_danhmuc;
  Danhmuc();
  factory Danhmuc.fromJson(Map<String, dynamic> map)=>_$DanhmucFromJson(map);
  toJson()=>_$DanhmucToJson(this);
}