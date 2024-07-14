import 'package:dartz/dartz.dart';
import 'package:dfa_media/core/error/error.dart';
import 'package:dfa_media/core/use_case/use_case.dart';
import 'package:dfa_media/features/home/domain/entity/story_entity.dart';
import 'package:dfa_media/features/home/domain/repository/home_repository.dart';

final class GetStory implements UseCase<List<StoryEntity>, Unit> {
  final HomeRepository _homeRepository;

  GetStory({required HomeRepository homeRepository})
      : _homeRepository = homeRepository;

  @override
  Future<Either<Failure, List<StoryEntity>>> call([Unit param = unit]) async {
    return await _homeRepository.getStory();
  }
}
