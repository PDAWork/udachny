import 'package:dfa_media/features/home/domain/entity/banner_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'banner_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
base class BannerModel extends BannerEntity {
  const  BannerModel({
    required super.id,
    required super.image,
    required super.link,
  });

  factory BannerModel.fromJson(Map<String, dynamic> json) =>
      _$BannerModelFromJson(json);
}
