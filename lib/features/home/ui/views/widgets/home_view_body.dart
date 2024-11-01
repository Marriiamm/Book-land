import 'package:flutter/material.dart';
import 'package:lit_libraryy/core/utils/styles.dart';


import 'bestseller_listview.dart';
import 'books_listview.dart';
import 'custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomAppBar(),
          BooksListView(),
          SizedBox(
            height: 24,
          ),
          Text(
            "Best Seller",
            style: Styles.textStyle20,
          ),
        ])),
        SliverToBoxAdapter(
          child: Divider(
            indent: 30,
            endIndent: 30,
            thickness: 1.5,
            color: Colors.black26,
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 16,
          ),
        ),
        SliverFillRemaining(
          child: BestSellerListView(),
        ),
      ],
    );
  }
}

// class Banners extends StatelessWidget {
//   const Banners({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: screenHeight * 0.25,
//       child: controller.isGettingBanners
//           ? Center(
//               child: Lottie.asset('assets/anims/loader.json'),
//             )
//           : controller.bannersUrls.isEmpty
//               ? ClipRRect(
//                   borderRadius: BorderRadius.circular(16),
//                   child: Image.asset(
//                     'assets/images/coming_soon.jpg',
//                     fit: BoxFit.cover,
//                     width: double.infinity,
//                   ),
//                 )
//               : Stack(
//                   alignment: Alignment.bottomCenter,
//                   children: [
//                     PageView.builder(
//                       controller: controller.bannerController,
//                       physics: const BouncingScrollPhysics(),
//                       itemBuilder: (context, index) => Container(
//                         margin: const EdgeInsets.symmetric(horizontal: 4),
//                         decoration: BoxDecoration(
//                             gradient: const LinearGradient(
//                                 begin: Alignment.topLeft,
//                                 end: Alignment.bottomRight,
//                                 colors: [green, mint, blue]),
//                             borderRadius: BorderRadius.circular(16)),
//                         child: ClipRRect(
//                           borderRadius: BorderRadius.circular(16),
//                           child: Image.network(
//                             controller.bannersUrls[index],
//                             fit: BoxFit.cover,
//                             loadingBuilder: (context, child, loadingProgress) {
//                               if (loadingProgress == null) {
//                                 return child;
//                               }
//                               return Center(
//                                 child: Lottie.asset('assets/anims/loader.json'),
//                               );
//                             },
//                           ),
//                         ),
//                       ),
//                       itemCount: 3,
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(12.0),
//                       child: SmoothPageIndicator(
//                         controller: controller.bannerController,
//                         count: controller.bannersUrls.length,
//                         effect: const ExpandingDotsEffect(
//                           dotColor: white,
//                           activeDotColor: white,
//                           dotHeight: 10,
//                           dotWidth: 10,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//     );
//   }
// }
