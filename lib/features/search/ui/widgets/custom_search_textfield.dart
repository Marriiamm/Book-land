import 'package:flutter/material.dart';

import '../../../../core/utils/styles.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        fillColor: Colors.black.withOpacity(0.08),
        filled: true,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none),
        hintText: 'Search',
        hintStyle: Styles.textStyle16,
        suffixIcon: IconButton(
          onPressed: () {},
          icon: Image.asset(
            "assets/icons/search_icon.png",
            width: 24,
            height: 24,
          ),
        ),
      ),
    );
  }
}
