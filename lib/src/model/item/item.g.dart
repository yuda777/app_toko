// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Item _$ItemFromJson(Map<String, dynamic> json) {
  return Item(
    json['item_name'] as String,
    json['price'] as num,
    json['input_date'] as String
  );
}

Map<String, dynamic> _$ItemToJson(Item instance) => <String, dynamic>{
  'item_name': instance.item_name,
  'price': instance.price,
  'input_date': instance.input_date
};
