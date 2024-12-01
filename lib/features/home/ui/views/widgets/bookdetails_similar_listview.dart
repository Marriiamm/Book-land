import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lit_libraryy/core/widgets/custom_error_widget.dart';
import 'package:lit_libraryy/features/home/ui/view_model/similar_books_cu/similar_books_cubit.dart';

import 'custom_listview_item.dart';

class BookDetailsListView extends StatelessWidget {
  const BookDetailsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubitCubit, SimilarBooksCubitState>(
      builder: (context, state) {
        if (state is SimilarBooksCubitSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .2,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return const Padding(
                  padding: EdgeInsets.only(right: 10.0),
                  child: CustomListViewItem(
                    imageUrl:
                        "https://www.google.com/imgres?q=books%20cover&imgurl=https%3A%2F%2Fimages.squarespace-cdn.com%2Fcontent%2Fv1%2F5fc7868e04dc9f2855c99940%2F32f738d4-e4b9-4c61-bfc0-e813699cdd3c%2Flaura-barrett-illustrator-beloved-girls-book-cover.jpg&imgrefurl=https%3A%2F%2Fwww.laurabarrett.co.uk%2Fblog%2Fbook-cover-illustration-reveal-the-beloved-girls&docid=l60n-rKAEOsTPM&tbnid=z0H6upwceEzQqM&vet=12ahUKEwjZ06GfpvuJAxWsVqQEHYkaHroQM3oECBkQAA..i&w=1500&h=2302&hcb=2&ved=2ahUKEwjZ06GfpvuJAxWsVqQEHYkaHroQM3oECBkQAA",
                  ),
                );
              },
            ),
          );
        } else if (state is SimilarBooksCubitFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
