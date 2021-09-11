import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class UI_CONST {
  static const ORIENTATION = [
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ];

  static const SYSTEM_OVERLAY_STYLE = SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.black, // navigation bar color
    systemNavigationBarIconBrightness: Brightness.light, //navigation bar icon
    statusBarColor: Colors.black, // status bar color
    statusBarBrightness: Brightness.light, //status bar brigtness
    statusBarIconBrightness: Brightness.light, //status barIcon Brightness
  );

  static const ROUNDS = 5;
}
