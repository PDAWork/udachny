import 'package:dfa_media/features/home/domain/entity/story_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'story_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
base class StoryModel extends StoryEntity {
  const StoryModel({
    required super.id,
    required super.previewImage,
    required super.title,
  });

  factory StoryModel.fromJson(Map<String, dynamic> json) =>
      _$StoryModelFromJson(json);
}
