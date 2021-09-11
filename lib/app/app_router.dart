import 'package:flutter/material.dart';
import 'package:nhl/ui/common_ui/common_ui.dart';
import 'package:nhl/ui/home/sc_home.dart';
import 'package:nhl/ui/splash/sc_splash.dart';

class AppRouter {
  static const SPLASH = '/splash';
  static const HOME = '/home';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case SPLASH:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case AppRouter.HOME:
        return SlideNavigation(widget: HomeScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
