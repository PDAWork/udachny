import 'package:bloc/bloc.dart';
import 'package:dfa_media/features/home/domain/entity/banner_entity.dart';
import 'package:dfa_media/features/home/domain/use_case/get_banner.dart';
import 'package:meta/meta.dart';

part 'banner_state.dart';

class BannerCubit extends Cubit<BannerState> {
  BannerCubit({required GetBanner getStory})
      : _getStory = getStory,
        super(BannerInitial());

  final GetBanner _getStory;

  void init() async {
    emit(BannerLoading());

    final result = await _getStory.call();

    result.fold(
      (failure) => emit(BannerError(message: 'Ошибка')),
      (data) => emit(BannerSuccess(banner: data)),
    );
  }
}
