import 'package:dfa_media/common/app_color.dart';
import 'package:dfa_media/features/home/presentation/state/banner/banner_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BannerWidget extends StatelessWidget {
  BannerWidget({super.key});
  final PageController _controller = PageController(keepPage: true);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BannerCubit, BannerState>(
      builder: (context, state) {
        return switch (state) {
          BannerLoading() => const SizedBox(
              height: 144,
              child: Center(
                child: CircularProgressIndicator(),
              ),
            ),
          BannerSuccess(:final banner) => Column(
              children: [
                Expanded(
                  child: PageView.builder(
                      itemCount: banner.length,
                      controller: _controller,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            SizedBox(
                              height: 144,
                              // width: MediaQuery.of(context).size.width,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(16),
                                child: Image.network(
                                  banner[index].image,
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                            ),
                          ],
                        );
                      }),
                ),
                const SizedBox(height: 10),
                SmoothPageIndicator(
                  controller: _controller,
                  count: banner.length,
                  effect: ExpandingDotsEffect(
                    activeDotColor: AppColor.bannerIndicator,
                    dotColor: AppColor.bannerIndicator.withOpacity(0.5),
                    dotHeight: 8,
                    dotWidth: 8,
                  ),
                ),
              ],
            ),
          _ => const SizedBox(),
        };
      },
    );
  }
}
