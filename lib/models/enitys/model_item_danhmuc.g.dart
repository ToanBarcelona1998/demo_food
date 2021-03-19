// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_item_danhmuc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItemDanhmuc _$ItemDanhmucFromJson(Map<String, dynamic> json) {
  return ItemDanhmuc(
    id_item: json['id_item'] as int?,
    name_item: json['name_item'] as String?,
    price_item: json['price_item'] as int?,
    intro_item: json['intro_item'] as String?,
    image_item: json['image_item'] as String?,
    id_danhmuc: json['id_danhmuc'] as int?,
  );
}

Map<String, dynamic> _$ItemDanhmucToJson(ItemDanhmuc instance) =>
    <String, dynamic>{
      'id_item': instance.id_item,
      'name_item': instance.name_item,
      'price_item': instance.price_item,
      'intro_item': instance.intro_item,
      'image_item': instance.image_item,
      'id_danhmuc': instance.id_danhmuc,
    };
