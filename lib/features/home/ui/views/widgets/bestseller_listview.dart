import 'package:flutter/material.dart';

import 'bestseller_listview_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return const Padding(
          padding: EdgeInsets.only(bottom: 15.0, right: 8, left: 8),
          child: BestSellerListItem(),
        );
      },
    );
  }
}
