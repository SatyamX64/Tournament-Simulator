import 'package:flutter/material.dart';

class SlideNavigation extends PageRouteBuilder {
  final Widget widget;

  SlideNavigation({required this.widget})
      : super(
            transitionDuration: Duration(milliseconds: 500),
            transitionsBuilder: (BuildContext con, Animation<double> animation,
                Animation<double> animationDuration, Widget child) {
              animation =
                  CurvedAnimation(parent: animation, curve: Curves.easeInOut);
              return SlideTransition(
                transformHitTests: true,
                position:
                    Tween<Offset>(begin: const Offset(0, 1), end: Offset.zero)
                        .animate(animation),
                textDirection: TextDirection.ltr,
                child: child,
              );
            },
            pageBuilder: (BuildContext context, Animation<double> animation,
                Animation<double> animationDuration) {
              return widget;
            });
}
