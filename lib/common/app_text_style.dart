import 'package:flutter/material.dart';

abstract final class AppTextStyle {
  AppTextStyle._();

  static TextStyle get labelXS => const TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w400,
      );
  static TextStyle get labelS => const TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w400,
      );
  static TextStyle get titleH4 => const TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 16,
        color: Colors.black,
      );
}
