import 'package:dfa_media/common/app_color.dart';
import 'package:dfa_media/common/app_text_style.dart';
import 'package:flutter/material.dart';

abstract final class AppTheme {
  static ThemeData get light => _light;
  static ThemeData get _light => ThemeData(
        scaffoldBackgroundColor: AppColor.background,
        fontFamily: "Stolzl",
        bottomAppBarTheme: const BottomAppBarTheme(
          color: Colors.white,
          padding: EdgeInsets.zero,
          height: kBottomNavigationBarHeight,
        ),
        progressIndicatorTheme: ProgressIndicatorThemeData(
          color: AppColor.primary
        ),
        appBarTheme: AppBarTheme(
          titleTextStyle: AppTextStyle.titleH4,
          backgroundColor: AppColor.background,
        ),
      );
}
