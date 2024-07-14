import 'package:dartz/dartz.dart';
import 'package:dfa_media/core/error/error.dart';
import 'package:dfa_media/core/use_case/use_case.dart';
import 'package:dfa_media/features/home/domain/entity/product_entity.dart';
import 'package:dfa_media/features/home/domain/repository/home_repository.dart';

final class GetProduct implements UseCase<List<ProductEntity>, Unit> {
  final HomeRepository _homeRepository;

  GetProduct({required HomeRepository homeRepository})
      : _homeRepository = homeRepository;

  @override
  Future<Either<Failure, List<ProductEntity>>> call([Unit param = unit]) async {
    return await _homeRepository.getProduct();
  }
}
