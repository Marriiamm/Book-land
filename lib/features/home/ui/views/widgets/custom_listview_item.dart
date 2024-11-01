import 'package:flutter/material.dart';

import '../../../../../core/utils/assets_data.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2 / 3.4,
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(16)),
          color: Colors.black26,
          image: DecorationImage(
              fit: BoxFit.fill, image: AssetImage(AssetsData.testImage)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
            alignment: Alignment.bottomRight,
            child: CircleAvatar(
              backgroundColor: Colors.black.withOpacity(0.75),
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.start_rounded,
                    color: Colors.white,
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
