import 'package:flutter/material.dart';
import 'package:lit_libraryy/constants.dart';
import 'package:lit_libraryy/core/widgets/custom_button.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              backgroundColor: kPrimaryClr,
              textColor: Colors.black54,
              borderrRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16),
                topLeft: Radius.circular(16),
              ),
              textt: "19.9&",
            ),
          ),
          Expanded(
            child: CustomButton(
              textt: "Free Review",
              backgroundColor: kPrimaryClr,
              textColor: Colors.white,
              borderrRadius: BorderRadius.only(
                bottomRight: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
