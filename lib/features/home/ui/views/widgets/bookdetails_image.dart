import 'package:flutter/material.dart';

import '../../../../../core/utils/assets_data.dart';

class BookDetailsImage extends StatelessWidget {
  const BookDetailsImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2 / 3.2,
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(16)),
          color: Colors.black26,
          image: DecorationImage(
              fit: BoxFit.fill, image: AssetImage(AssetsData.testImage)),
        ),
      ),
    );
  }
}
