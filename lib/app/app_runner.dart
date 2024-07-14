import 'dart:async';

import 'package:dfa_media/app/app.dart';
import 'package:dfa_media/core/service/talker.dart';
import 'package:dfa_media/di/app_depends.dart';
import 'package:flutter/material.dart';

final class AppRunner {
  Future<void> run() async {
    runZonedGuarded(() async {
      await _initApp();

      final appDepends = AppDepends();
      await appDepends.init(
        onError: (name, error, stackTrace) {
          throw '$name, $error, $stackTrace';
        },
        onProgress: (name, progress) {
          talker.info("Init $name $progress");
        },
      );

      runApp(App(depends: appDepends));
    }, (err, st) {});

    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) => WidgetsBinding.instance.allowFirstFrame(),
    );
  }

  Future<void> _initApp() async {
    WidgetsFlutterBinding.ensureInitialized();
    WidgetsBinding.instance.deferFirstFrame();
  }
}
