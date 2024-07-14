final class Failure {}

final class ServerFailure extends Failure {
  final String message;

  ServerFailure({required this.message});
}

final class CachedFailure extends Failure {
  final String message;

  CachedFailure({required this.message});
}
