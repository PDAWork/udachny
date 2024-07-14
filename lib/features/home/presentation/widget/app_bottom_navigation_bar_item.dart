import 'package:dfa_media/common/app_text_style.dart';
import 'package:dfa_media/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class AppBottomNavigationBarItem extends StatelessWidget {
  const AppBottomNavigationBarItem({
    super.key,
    required this.icon,
    required this.title,
    this.color = Colors.black,
  });

  final SvgGenImage icon;
  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        icon.svg(
          colorFilter: ColorFilter.mode(
            color,
            BlendMode.srcIn,
          ),
        ),
        Text(
          title,
          style: AppTextStyle.labelXS.copyWith(
            color: color,
          ),
        ),
      ],
    );
  }
}
