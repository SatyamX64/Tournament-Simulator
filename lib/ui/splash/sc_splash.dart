import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:nhl/app/app_router.dart';
import 'package:nhl/gen/assets.gen.dart';
import 'package:nhl/utils/color_const.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GestureDetector(
          onVerticalDragUpdate: (dragUpdateDetails) {
            Navigator.of(context).pushReplacementNamed(AppRouter.HOME);
          },
          child: Stack(
            children: [
              Container(
                constraints: BoxConstraints.expand(),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.black, COLOR_CONST.PURPLE],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [0.0, 1.0]),
                ),
                alignment: Alignment.center,
                child: Assets.images.stanleyCup
                    .image(height: 256, fit: BoxFit.cover),
              ),
              Positioned(
                bottom: 32,
                left: 0,
                right: 0,
                child: SizedBox(
                  height: 64,
                  child: Lottie.network(
                      'https://assets10.lottiefiles.com/private_files/lf30_9pixomne.json'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
