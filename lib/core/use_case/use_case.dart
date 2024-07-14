import 'package:dartz/dartz.dart';
import 'package:dfa_media/core/error/error.dart';

abstract class UseCase<T, Params> {
  Future<Either<Failure, T>> call([Params param]);
}
