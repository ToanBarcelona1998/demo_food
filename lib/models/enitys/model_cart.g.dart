// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_cart.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CartModel _$CartModelFromJson(Map<String, dynamic> json) {
  return CartModel()
    ..id_cart = json['id_cart'] as int?
    ..name_cart = json['name_cart'] as String?
    ..price_one_item = json['price_one_item'] as int?
    ..image_cart = json['image_cart'] as String?
    ..number_cart = json['number_cart'] as int?;
}

Map<String, dynamic> _$CartModelToJson(CartModel instance) => <String, dynamic>{
      'id_cart': instance.id_cart,
      'name_cart': instance.name_cart,
      'price_one_item': instance.price_one_item,
      'image_cart': instance.image_cart,
      'number_cart': instance.number_cart,
    };
