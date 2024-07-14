import 'package:dfa_media/common/app_color.dart';
import 'package:dfa_media/common/app_text_style.dart';
import 'package:dfa_media/features/home/presentation/widget/app_bottom_navigation_bar_item.dart';
import 'package:dfa_media/features/home/presentation/widget/banner_widget.dart';
import 'package:dfa_media/features/home/presentation/widget/story_widget.dart';
import 'package:dfa_media/features/home/presentation/widget/product_widget.dart';
import 'package:dfa_media/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Assets.icon.person.svg(),
        ),
        toolbarHeight: 44,
        leadingWidth: 37,
        centerTitle: false,
        title: const Text(
          'Анна',
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 14),
            child: Assets.icon.mark.svg(),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 14),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 32,
                  height: 32,
                  padding: const EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: 6,
                  ),
                  child: Assets.icon.bell.svg(),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    width: 15,
                    height: 15,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: AppColor.primary,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Text(
                      '2',
                      style: AppTextStyle.labelXS.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AppBottomNavigationBarItem(
              icon: Assets.icon.home,
              title: 'Главная',
              color: AppColor.primary,
            ),
            AppBottomNavigationBarItem(
              icon: Assets.icon.cart,
              title: 'Доставка',
            ),
            const SizedBox(
              width: 60,
            ),
            AppBottomNavigationBarItem(
              icon: Assets.icon.shop,
              title: 'Магазины',
            ),
            AppBottomNavigationBarItem(
              icon: Assets.icon.message,
              title: 'Связаться',
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 110,
              child: StoryWidget(),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              padding: const EdgeInsets.only(left: 15, right: 15),
              height: 162,
              child: BannerWidget(),
            ),
            // Хит продаж
            Padding(
              padding: const EdgeInsets.only(
                top: 25,
                left: 15,
                bottom: 10,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: AppColor.primary,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.all(10),
                    child: Assets.icon.fire.svg(
                      colorFilter: const ColorFilter.mode(
                        Colors.white,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    'Хит продаж',
                    style: AppTextStyle.titleH4,
                  )
                ],
              ),
            ),
            // Хит продаж
            const SizedBox(
              height: 198,
              child: ProductWidget(),
            )
          ],
        ),
      ),
    );
  }
}
