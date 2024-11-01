import 'package:flutter/material.dart';
import 'package:lit_libraryy/constants.dart';
import 'package:lit_libraryy/core/utils/app_routes.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "BookLand",
          style: TextStyle(
            color: kPrimaryClr,
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
        ),
        IconButton(
          onPressed: () {
            Navigator.pushNamed(
              context,
              AppRoutes.search,
            );
          },
          icon: Image.asset(
            "assets/icons/search.png",
            width: 32,
            height: 32,
          ),
        ),
      ],
    );
  }
}
