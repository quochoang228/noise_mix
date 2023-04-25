import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:noise_mix/router/router_config.dart';

class App extends ConsumerStatefulWidget {
  const App({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AppState();
}

class _AppState extends ConsumerState<App> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      // navigatorKey: locator<AppService>().navigatorKey,
      debugShowCheckedModeBanner: false,
      routerConfig: goRouterConfiguration,
      // routeInformationProvider: goRouterConfiguration.routeInformationProvider,
      // routeInformationParser: goRouterConfiguration.routeInformationParser,
      // routerDelegate: goRouterConfiguration.routerDelegate,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
    );
  }
}