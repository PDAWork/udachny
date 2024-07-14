import 'package:dfa_media/common/app_text_style.dart';
import 'package:dfa_media/features/home/presentation/state/story/story_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

class StoryWidget extends StatelessWidget {
  const StoryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StoryCubit, StoryState>(
      builder: (context, state) {
        return switch (state) {
          StorySuccess(:final stories) => ListView.separated(
              padding: const EdgeInsets.only(left: 15),
              separatorBuilder: (context, index) {
                return const SizedBox(width: 5);
              },
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return SizedBox(
                  width: 80,
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 31.5,
                        child: Image.network(
                          stories[index].previewImage,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        stories[index].title,
                        softWrap: true,
                        textAlign: TextAlign.center,
                        style: AppTextStyle.labelXS,
                      )
                    ],
                  ),
                );
              },
              itemCount: stories.length,
            ),
          StoryLoading() => Skeletonizer(
              enabled: true,
              child: ListView.separated(
                padding: const EdgeInsets.only(left: 15),
                separatorBuilder: (context, index) {
                  return const SizedBox(width: 5);
                },
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return SizedBox(
                    width: 80,
                    child: Column(
                      children: [
                        const CircleAvatar(
                          radius: 31.5,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Скидка 20% на сыр',
                          softWrap: true,
                          textAlign: TextAlign.center,
                          style: AppTextStyle.labelXS,
                        )
                      ],
                    ),
                  );
                },
                itemCount: 5,
              ),
            ),
          _ => const SizedBox()
        };
      },
    );
  }
}
