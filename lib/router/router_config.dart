import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:noise_mix/router/paths.dart';
import 'package:noise_mix/screen/home/home_screen.dart';
import 'package:noise_mix/screen/root.dart';
import 'package:noise_mix/screen/splash/splash_screen.dart';

final goRouterConfiguration = GoRouter(
  // init routes
  initialLocation: Paths.splash,
  // Show debugging logs.
  debugLogDiagnostics: true,

  // redirect: _handleRedirect,

  redirect: _guard,

  routes: [
    GoRoute(
      path: Paths.splash,
      pageBuilder: (context, state) => MaterialPage<void>(
        key: state.pageKey,
        child: const SplahScreen(),
      ),
    ),
    GoRoute(
      path: Paths.root,
      builder: (context, state) {
        return const Root();
      },
    ),
  ],
);

String? _guard(BuildContext context, GoRouterState state) {
  // final bool signedIn = _auth.signedIn;
  // final bool signingIn = state.subloc == '/signin';

  // // Go to /signin if the user is not signed in
  // if (!signedIn && !signingIn) {
  //   return '/signin';
  // }
  // // Go to /books if the user is signed in and tries to go to /signin.
  // else if (signedIn && signingIn) {
  //   return '/books';
  // }

  // no redirect
  return null;
}

class FadeTransitionPage extends CustomTransitionPage<void> {
  /// Creates a [FadeTransitionPage].
  FadeTransitionPage({
    required LocalKey key,
    required Widget child,
  }) : super(
            key: key,
            transitionsBuilder: (BuildContext context,
                    Animation<double> animation,
                    Animation<double> secondaryAnimation,
                    Widget child) =>
                FadeTransition(
                  opacity: animation.drive(_curveTween),
                  child: child,
                ),
            child: child);

  static final CurveTween _curveTween = CurveTween(curve: Curves.easeIn);
}
