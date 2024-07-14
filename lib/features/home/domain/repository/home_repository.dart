import 'package:dartz/dartz.dart';
import 'package:dfa_media/core/error/error.dart';
import 'package:dfa_media/features/home/domain/entity/banner_entity.dart';
import 'package:dfa_media/features/home/domain/entity/product_entity.dart';
import 'package:dfa_media/features/home/domain/entity/story_entity.dart';

abstract interface class HomeRepository {
  Future<Either<Failure, List<BannerEntity>>> getBanner();
  Future<Either<Failure, List<StoryEntity>>> getStory();
  Future<Either<Failure, List<ProductEntity>>> getProduct();
}
