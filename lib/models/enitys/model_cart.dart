import 'package:json_annotation/json_annotation.dart';
part 'model_cart.g.dart';
@JsonSerializable()
class CartModel{
  int ?id_cart;
  String ?name_cart;
  int ?price_one_item;
  String ? image_cart;
  int ? number_cart;
  CartModel({this.id_cart,this.name_cart,this.price_one_item,this.image_cart,this.number_cart});

  factory CartModel.fromJson(Map<String,dynamic> map)=>_$CartModelFromJson(map);
  Map<String,dynamic> toJson()=>_$CartModelToJson(this);
}