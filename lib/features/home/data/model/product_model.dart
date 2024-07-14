import 'package:dfa_media/features/home/domain/entity/product_entity.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
base class ProductModel extends ProductEntity {
  ProductModel({
    required super.id,
    required super.title,
    required super.price,
    required super.salePrice,
    required super.unit,
    required super.image,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        id: (json['id'] as num).toInt(),
        title: json['title'] as String,
        image: json['image'] as String,
        price: json['price'] as num,
        salePrice: json['sale_price'],
        unit: UnitEnum.values[json['unit'] as int],
      );
}
