// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_danhmuc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Danhmuc _$DanhmucFromJson(Map<String, dynamic> json) {
  return Danhmuc()
    ..id_danhmuc = json['id_danhmuc'] as int?
    ..name_danhmuc = json['name_danhmuc'] as String?
    ..image_danhmuc = json['image_danhmuc'] as String?;
}

Map<String, dynamic> _$DanhmucToJson(Danhmuc instance) => <String, dynamic>{
      'id_danhmuc': instance.id_danhmuc,
      'name_danhmuc': instance.name_danhmuc,
      'image_danhmuc': instance.image_danhmuc,
    };
