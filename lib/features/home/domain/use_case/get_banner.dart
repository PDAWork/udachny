import 'package:dartz/dartz.dart';
import 'package:dfa_media/core/error/error.dart';
import 'package:dfa_media/core/use_case/use_case.dart';
import 'package:dfa_media/features/home/domain/entity/banner_entity.dart';
import 'package:dfa_media/features/home/domain/repository/home_repository.dart';

final class GetBanner implements UseCase<List<BannerEntity>, Unit> {
  final HomeRepository _homeRepository;

  GetBanner({required HomeRepository homeRepository})
      : _homeRepository = homeRepository;

  @override
  Future<Either<Failure, List<BannerEntity>>> call([Unit param = unit]) async {
    return await _homeRepository.getBanner();
  }
}
