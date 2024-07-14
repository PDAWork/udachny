import 'package:bloc/bloc.dart';
import 'package:dfa_media/features/home/domain/entity/story_entity.dart';
import 'package:dfa_media/features/home/domain/use_case/get_story.dart';
import 'package:meta/meta.dart';

part 'story_state.dart';

class StoryCubit extends Cubit<StoryState> {
  StoryCubit({
    required GetStory getStory,
  })  : _getStory = getStory,
        super(StoryInitial());

  final GetStory _getStory;

  void init() async {
    emit(StoryLoading());

    final result = await _getStory.call();

    result.fold(
      (failure) => emit(StoryError(message: 'Ошибка')),
      (data) => emit(StorySuccess(stories: data)),
    );
  }
}
