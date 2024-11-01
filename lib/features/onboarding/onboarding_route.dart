// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../auth/login_view.dart';
import '../auth/register_view.dart';

class MyHome extends StatefulWidget {
  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  bool _showTutorial = true;
  final Color kDarkBlueColor = const Color(0xFF053149);

  @override
  void initState() {
    super.initState();
    _initPrefs();
  }

  Future<void> _initPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _showTutorial = prefs.getBool('showTutorial') ?? true;
    if (_showTutorial) {
      prefs.setBool('showTutorial', false);
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return _showTutorial
        ? OnBoardingSlider(
            finishButtonText: 'Register',
            onFinish: () {
              Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) => const RegisterView(),
                ),
              );
            },
            finishButtonStyle: FinishButtonStyle(
              backgroundColor: kDarkBlueColor,
            ),
            skipTextButton: Text(
              'Skip',
              style: TextStyle(
                fontSize: 16,
                color: kDarkBlueColor,
                fontWeight: FontWeight.w600,
              ),
            ),
            trailing: Text(
              'Login',
              style: TextStyle(
                fontSize: 16,
                color: kDarkBlueColor,
                fontWeight: FontWeight.w600,
              ),
            ),
            trailingFunction: () {
              Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) => const LoginView(),
                ),
              );
            },
            controllerColor: kDarkBlueColor,
            totalPage: 2,
            headerBackgroundColor: Colors.white,
            pageBackgroundColor: Colors.white,
            background: [
              Center(
                child: Image.asset(
                  'assets/images/Knowledge_rafiki.png',
                  height: 400,
                  width: MediaQuery.sizeOf(context).width,
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Image.asset(
                  'assets/images/Reading.png',
                  height: 400,
                  width: MediaQuery.sizeOf(context).width,
                ),
              ),
            ],
            speed: 1.8,
            pageBodies: [
              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    const SizedBox(
                      height: 430,
                    ),
                    Text(
                      'BookLand',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: kDarkBlueColor,
                        fontSize: 24.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Welcome to our book land app, where every page turns into a journey of imagination and knowledge. Dive into a realm where stories come alive.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black38,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    const SizedBox(
                      height: 430,
                    ),
                    Text(
                      'Start now!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: kDarkBlueColor,
                        fontSize: 24.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Embark on a literary voyage like never before. From classics to contemporary bestsellers, our app is your gateway to a universe of literary treasures',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black38,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        : const RegisterView();
  }
}
