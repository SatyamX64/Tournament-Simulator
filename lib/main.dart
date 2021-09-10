import 'package:flutter/material.dart';

import 'app/app_config.dart';
import 'app/app_router.dart';
import 'app/my_app.dart';

Future<void> main() async {
  await MyApp.initGlobalConfigs();
  runApp(
    AppConfig(
      name: 'NHL 19',
      initialRoute: AppRouter.SPLASH,
      flavour: Flavour.developement,
      child: MyApp.run(),
    ),
  );
}
