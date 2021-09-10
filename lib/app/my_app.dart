import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nhl/utils/my_const.dart';

import 'app_config.dart';
import 'app_router.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appConfig = AppConfig.of(context);
    return MaterialApp(
      title: appConfig.name,
      initialRoute: appConfig.initialRoute,
      onGenerateRoute: AppRouter.generateRoute,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: COLOR_CONST.PRIMARY,
      ),
    );
  }

  static Future<void> initGlobalConfigs() async {
    WidgetsFlutterBinding.ensureInitialized();
    await SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  }

  static Widget run() {
    return const MyApp();
  }
}
