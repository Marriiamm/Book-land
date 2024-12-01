import 'package:flutter/material.dart';
import 'package:lit_libraryy/core/utils/styles.dart';
import 'book_rating.dart';
import 'bookdetails_appbar.dart';
import 'bookdetails_image.dart';
import 'bookdetails_similar_listview.dart';
import 'books_action.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                const BookdetailsAppBar(),
                const SizedBox(
                  height: 2,
                ),
                SizedBox(
                    height: MediaQuery.of(context).size.height * .32,
                    child: const BookDetailsImage()),
                const SizedBox(
                  height: 18,
                ),
                const Text(
                  "The Jungle Book",
                  style: Styles.textStyle30,
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  "Rudyard Kibling",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Styles.textStyle16.copyWith(
                    fontStyle: FontStyle.italic,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const BookRating(
                  rating: "rate",
                  count: 5,
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
                const SizedBox(
                  height: 16,
                ),
                const ActionButton(),
                const Expanded(
                  child: SizedBox(
                    height: 20,
                  ),
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "You Can Also Like",
                    style: Styles.textStyle18,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .03,
                ),
                const BookDetailsListView(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .03,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
