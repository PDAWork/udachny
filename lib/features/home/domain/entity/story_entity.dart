import 'package:json_annotation/json_annotation.dart';


base class StoryEntity {
  const StoryEntity({
    required this.id,
    required this.previewImage,
    required this.title,
  });

  final int id;
  @JsonKey(name: 'preview_image')
  final String previewImage;
  final String title;
}
