import 'package:flutter/material.dart';
import '../onboarding/onboarding_route.dart';
import 'widgets/Splash_view_body.dart';
import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterSplashScreen.fadeIn(
      backgroundColor: const Color(0xff7c5197),
      //backgroundImage: Image.asset('assets/images/splash.png'),
      onInit: () {
        debugPrint("On Init");
      },
      onEnd: () {
        debugPrint("On End");
      },
      childWidget: const SplashScreenBody(),
      onAnimationEnd: () => debugPrint("On Fade In End"),
      nextScreen: MyHome(),
    );
  }
}
