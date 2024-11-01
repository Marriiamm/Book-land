import 'package:flutter/material.dart';
import 'package:lit_libraryy/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.backgroundColor,
    required this.textt,
    required this.textColor,
    this.borderrRadius,
  });
  final String textt;
  final Color backgroundColor;
  final Color textColor;
  final BorderRadius? borderrRadius;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      width: MediaQuery.of(context).size.width * .4,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
                borderRadius: borderrRadius ?? BorderRadius.circular(12))),
        child: Text(
          textt,
          style: Styles.textStyle18
              .copyWith(color: textColor, fontWeight: FontWeight.w900),
        ),
      ),
    );
  }
}
