// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Item _$ItemFromJson(Map<String, dynamic> json) {
  return Item(json['item_name'] as String, json['price'] as num,
      json['input_date'] as String)
    ..items = (json['items'] as List)
        ?.map(
            (e) => e == null ? null : Item.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..error = json['error'] as String;
}

Map<String, dynamic> _$ItemToJson(Item instance) => <String, dynamic>{
      'items': instance.items,
      'error': instance.error,
      'item_name': instance.item_name,
      'price': instance.price,
      'input_date': instance.input_date
    };
