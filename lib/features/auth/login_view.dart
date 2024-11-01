import 'package:flutter/material.dart';
import 'package:lit_libraryy/features/auth/widgets/buttons.dart';
import 'package:lit_libraryy/features/auth/widgets/textFields.dart';

import '../../constants.dart';
import '../../core/utils/app_routes.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    var height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      backgroundColor: kPrimaryClr,
      body: Stack(
        children: [
          Container(
            height: height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/auth_back.png"),
                  fit: BoxFit.fitHeight),
            ),
          ),
          Align(
            child: Container(
              height: height,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    kPrimaryClr,
                    kPrimaryClr,
                    kPrimaryClr.withOpacity(0.9),
                    kPrimaryClr.withOpacity(0.8),
                    kPrimaryClr.withOpacity(0.7),
                    Colors.black26,
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: height * 0.2,
                    ),
                    Container(
                      width: width * 0.3,
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Image.asset("assets/icons/books.png"),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const Text(
                      "BookLand",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "E-Mail",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    CustomTextFormField(
                      prefixIcon: Icons.email_rounded,
                      hintText: "Enter your mail",
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Password",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    CustomTextFormField(
                      prefixIcon: Icons.remove_red_eye_rounded,
                      hintText: "Enter your Password",
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Align(
                      alignment: Alignment.topRight,
                      child: InkWell(
                        child: Text(
                          "Forget your Password?",
                          style: TextStyle(
                              color: kLightColor2,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    CustomButton(
                      onTap: () => Navigator.pushNamed(context, AppRoutes.home),
                      buttonLabel: 'Login',
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    CustomButton(
                      buttonLabel: 'Login with Google',
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    InkWell(
                      onTap: () => Navigator.pushNamed(context, AppRoutes.register),
                      child: const Text.rich(
                        TextSpan(children: [
                          TextSpan(
                            text: "Don't have an Account ?  ",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                          TextSpan(
                            text: "Register",
                            style: TextStyle(
                                color: kLightColor2,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                        ]),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
