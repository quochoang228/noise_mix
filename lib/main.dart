import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:noise_mix/app.dart';

void main() {
  bootstrap(
    app: const App(),
  );
}

Future<void> bootstrap({required Widget app}) async {

    WidgetsFlutterBinding.ensureInitialized();

  await EasyLocalization.ensureInitialized();

  /// set orientations
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
    // DeviceOrientation.landscapeRight,
    // DeviceOrientation.landscapeLeft,
  ]);

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,

      // background status bar
      systemNavigationBarColor: Colors.black,

      // background Navigation
      statusBarIconBrightness: Brightness.dark,
    ),
  );

    runZonedGuarded<Future<void>>(() async {
    runApp(
      ProviderScope(
        // overrides: [
        //   userInfoControllerProvider.overrideWith((ref) => ref.watch(userInfoControllerProvider.notifier)),
        // ],
        child: EasyLocalization(
          path: 'assets/l10n',
          supportedLocales: const [
            Locale('vi'),
            // Locale('en', 'US')
          ],
          child: app,
        ),
      ),
    );
  }, (error, stackTrace) async {
    if (kDebugMode) {
      // in development, print error and stack trace
      // ignore: avoid_print
      print('$error');

      // ignore: avoid_print
      print('$stackTrace');
    } else {
      // report to a error tracking system in production
    }
  });

}
