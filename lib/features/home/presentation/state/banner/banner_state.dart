part of 'banner_cubit.dart';

@immutable
sealed class BannerState {}

final class BannerInitial extends BannerState {}

final class BannerLoading extends BannerState {}

final class BannerSuccess extends BannerState {
  final List<BannerEntity> banner;

  BannerSuccess({required this.banner});
}

final class BannerError extends BannerState {
  final String message;

  BannerError({required this.message});
}
