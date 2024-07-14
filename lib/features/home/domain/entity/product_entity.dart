import 'package:json_annotation/json_annotation.dart';

base class ProductEntity {
  ProductEntity({
    required this.id,
    required this.title,
    required this.price,
    required this.image,
    required this.salePrice,
    required this.unit,
  });

  final int id;
  final String title;
  final String image;
  final num price;
  @JsonKey(name: "sale_price")
  final num? salePrice;
  final UnitEnum unit;
}

enum UnitEnum {
  kg(text: 'кг'),
  unit(text: "шт"),
  g(text: "г");

  const UnitEnum({required this.text});
  final String text;
}
