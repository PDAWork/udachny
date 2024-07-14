import 'package:dfa_media/di/app_depends.dart';
import 'package:flutter/material.dart';

final class AppDependsProvider extends InheritedWidget {
  final AppDepends depends;

  const AppDependsProvider({
    super.key,
    required super.child,
    required this.depends,
  });

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => false;

  static AppDepends of(BuildContext context, [bool listen = true]) {
    final provider = listen
        ? context.getInheritedWidgetOfExactType<AppDependsProvider>()
        : context.dependOnInheritedWidgetOfExactType<AppDependsProvider>();
    assert(provider != null, "Depends not found");
    return provider!.depends;
  }
}
