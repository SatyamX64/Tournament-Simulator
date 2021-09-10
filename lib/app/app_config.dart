import 'package:flutter/material.dart';

enum Flavour { production, developement }

class AppConfig extends InheritedWidget {
  final String name;
  final String initialRoute;
  final Flavour flavour;
  final Widget child;

  const AppConfig(
      {required this.child,
      required this.flavour,
      required this.initialRoute,
      required this.name})
      : super(child: child);

  static AppConfig of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType()!;
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return false;
  }
}
