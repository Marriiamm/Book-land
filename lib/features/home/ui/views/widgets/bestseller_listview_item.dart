import 'package:flutter/material.dart';
import 'package:lit_libraryy/core/utils/app_routes.dart';
import 'package:lit_libraryy/core/utils/styles.dart';
import 'package:lit_libraryy/features/home/data/models/book_model/book_model.dart';
import 'package:lit_libraryy/features/home/ui/views/widgets/custom_listview_item.dart';

import '../../../../../constants.dart';
import 'book_rating.dart';

class BestSellerListItem extends StatelessWidget {
  const BestSellerListItem({super.key, required this.book});

  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, AppRoutes.bookDetails);
      },
      child: Container(
        decoration: const BoxDecoration(shape: BoxShape.rectangle),
        child: SizedBox(
          height: 130,
          child: Row(
            children: [
              CustomListViewItem(
                imageUrl: book.volumeInfo.imageLinks?.thumbnail?? "",
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      book.volumeInfo.title!,
                      style: Styles.textStyle20
                          .copyWith(fontFamily: kGTSectraFine),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    book.volumeInfo.authors![0],
                    style: Styles.textStyle14,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Free",
                          style: Styles.textStyle20.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        BookRating(
                          rating: book.volumeInfo.maturityRating??"No Rate",
                          count: 5,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
