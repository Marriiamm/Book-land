import 'package:flutter/material.dart';
import 'package:lit_libraryy/core/utils/styles.dart';

import '../../../home/ui/views/widgets/bestseller_listview_item.dart';
import 'custom_search_textfield.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        children: [
          SizedBox(
            height: 12,
          ),
          CustomSearchTextField(),
          SizedBox(
            height: 12,
          ),
          Divider(
            indent: 10,
            endIndent: 10,
            color: Colors.black26,
          ),
          Text(
            "Result",
            style: Styles.textStyle18,
          ),
          SizedBox(
            height: 12,
          ),
          Expanded(
            child: BookSearchResult(),
          ),
        ],
      ),
    );
  }
}

class BookSearchResult extends StatelessWidget {
  const BookSearchResult({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      //physics: const NeverScrollableScrollPhysics(),
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
