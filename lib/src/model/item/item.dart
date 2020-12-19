import 'package:json_annotation/json_annotation.dart';

part 'item.g.dart';

@JsonSerializable()
class Item {
  List<Item> items;
  String error;

  String item_name;
  num price;
  String input_date;
  
  Item(this.item_name, this.price, this.input_date);

  factory Item.fromJson(Map<String,dynamic> json) => _$ItemFromJson(json);
  
  Item.withError(this.error);


  Map<String, dynamic> toJson() => _$ItemToJson(this);

  @override
  String toString() {
    return 'Item{item_name: $item_name, price: $price}';
  }
}
