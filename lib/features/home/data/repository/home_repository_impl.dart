import 'package:dartz/dartz.dart';
import 'package:dfa_media/core/error/error.dart';
import 'package:dfa_media/features/home/data/data_source/home_remote.dart';
import 'package:dfa_media/features/home/domain/entity/banner_entity.dart';
import 'package:dfa_media/features/home/domain/entity/product_entity.dart';
import 'package:dfa_media/features/home/domain/entity/story_entity.dart';
import 'package:dfa_media/features/home/domain/repository/home_repository.dart';

final class HomeRepositoryImpl implements HomeRepository {
  final HomeRemote _homeRemote;

  HomeRepositoryImpl({required HomeRemote homeRemote})
      : _homeRemote = homeRemote;

  @override
  Future<Either<Failure, List<BannerEntity>>> getBanner() async {
    try {
      final data = await _homeRemote.getBanner();
      return Right(data);
    } catch (error) {
      return Left(ServerFailure(message: error.toString()));
    }
  }

  @override
  Future<Either<Failure, List<StoryEntity>>> getStory() async {
    try {
      final data = await _homeRemote.getStory();

      return Right(data);
    } catch (error) {
      return Left(ServerFailure(message: error.toString()));
    }
  }

  @override
  Future<Either<Failure, List<ProductEntity>>> getProduct() async {
    try {
      final data = await _homeRemote.getProduct();

      return Right(data);
    } catch (error) {
      return Left(ServerFailure(message: error.toString()));
    }
  }
}
