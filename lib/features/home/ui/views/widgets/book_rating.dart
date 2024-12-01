import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
    required this.rating,
    required this.count,
  });
  final MainAxisAlignment mainAxisAlignment;
  final String rating;
  final int count;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: const [
        Icon(
          Icons.star_rate_rounded,
          color: Color.fromARGB(255, 244, 12, 12),
        ),
        Text(
          "4.8",
          style: Styles.textStyle18,
        ),
        SizedBox(
          width: 4,
        ),
        Text(
          "(4167)",
          style: Styles.textStyle16,
        ),
      ],
    );
  }
}
