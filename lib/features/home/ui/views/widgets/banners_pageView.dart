
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:expandable_page_view/expandable_page_view.dart';

class CardsPageView extends StatelessWidget {
  const CardsPageView({super.key, required this.pageController});

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
        controller: pageController,
        scrollDirection: Axis.horizontal,
        children: List.generate(
          3,
          (index) => Container(),
        ));
  }
}

class CustomDot extends StatelessWidget {
  const CustomDot({super.key, required this.active});

  final bool active;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: active ? 32 : 8,
      height: 8,
      decoration: BoxDecoration(
          color: active ? const Color(0xff4EB7F2) : const Color(0xffE7E7E7),
          borderRadius: BorderRadius.circular(12)),
    );
  }
}

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({super.key, required this.currentIndex});

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) => Padding(
          // ignore: prefer_const_constructors
          padding: EdgeInsets.only(right: 6),
          child: CustomDot(active: index == currentIndex),
        ),
      ),
    );
  }
}
