/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vector_graphics/vector_graphics.dart';

class $AssetsIconGen {
  const $AssetsIconGen();

  /// File path: assets/icon/add_to_cart.svg
  SvgGenImage get addToCart => const SvgGenImage('assets/icon/add_to_cart.svg');

  /// File path: assets/icon/bell.svg
  SvgGenImage get bell => const SvgGenImage('assets/icon/bell.svg');

  /// File path: assets/icon/cart.svg
  SvgGenImage get cart => const SvgGenImage('assets/icon/cart.svg');

  /// File path: assets/icon/fire.svg
  SvgGenImage get fire => const SvgGenImage('assets/icon/fire.svg');

  /// File path: assets/icon/home.svg
  SvgGenImage get home => const SvgGenImage('assets/icon/home.svg');

  /// File path: assets/icon/mark.svg
  SvgGenImage get mark => const SvgGenImage('assets/icon/mark.svg');

  /// File path: assets/icon/message.svg
  SvgGenImage get message => const SvgGenImage('assets/icon/message.svg');

  /// File path: assets/icon/person.svg
  SvgGenImage get person => const SvgGenImage('assets/icon/person.svg');

  /// File path: assets/icon/shop.svg
  SvgGenImage get shop => const SvgGenImage('assets/icon/shop.svg');

  /// List of all assets
  List<SvgGenImage> get values =>
      [addToCart, bell, cart, fire, home, mark, message, person, shop];
}

class Assets {
  Assets._();

  static const $AssetsIconGen icon = $AssetsIconGen();
}

class SvgGenImage {
  const SvgGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = false;

  const SvgGenImage.vec(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme? theme,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final BytesLoader loader;
    if (_isVecFormat) {
      loader = AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
      );
    }
    return SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter: colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
