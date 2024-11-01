// ignore_for_file: file_names

import 'package:flutter/material.dart';

class SplashScreenBody extends StatefulWidget {
  const SplashScreenBody({super.key});

  @override
  State<SplashScreenBody> createState() => _SplashScreenBodyState();
}

class _SplashScreenBodyState extends State<SplashScreenBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> splashAnimation;

  @override
  void initState() {
    super.initState();
    initSplashAnimation();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(
        color: Color(0xff7c5197),
        image: DecorationImage(
            image: AssetImage('assets/images/background.png'),
            fit: BoxFit.cover),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 160,
          ),
          AnimatedBuilder(
              animation: splashAnimation,
              builder: (contect, _) {
                return SlideTransition(
                    position: splashAnimation,
                    child: Image.asset(
                      "assets/icons/books.png",
                      height: 120,
                      width: 120,
                    ));
              }),
          const SizedBox(
            height: 15,
          ),
          Directionality(
              textDirection: TextDirection.ltr,
              child: SplashTextAnimation(splashAnimation: splashAnimation))
        ],
      ),
    );
  }

  void initSplashAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    splashAnimation = Tween<Offset>(begin: const Offset(0, 1), end: Offset.zero)
        .animate(animationController);
    animationController.forward();
  }
}

class SplashTextAnimation extends StatelessWidget {
  const SplashTextAnimation({
    super.key,
    required this.splashAnimation,
  });

  final Animation<Offset> splashAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: splashAnimation,
        builder: (contect, _) {
          return SlideTransition(
              position: splashAnimation,
              child: const Text(
                "BookLand",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.w500),
              ));
        });
  }
}
