import 'dart:ffi';

import 'package:bookley_app/core/utils/app_assets.dart';
import 'package:bookley_app/core/utils/constants.dart';
import 'package:bookley_app/core/utils/styles.dart';
import 'package:bookley_app/features/home/presentation/views/widgets/author_name.dart';
import 'package:bookley_app/features/home/presentation/views/widgets/book_name.dart';
import 'package:bookley_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookley_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookley_app/features/home/presentation/views/widgets/featured_books_list_view.dart';
import 'package:bookley_app/features/home/presentation/views/widgets/featured_list_view_item.dart';
import 'package:bookley_app/features/home/presentation/views/widgets/price_and_rating.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(),
          const FeaturedBooksListView(),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * .06,
          ),
          const Text(
            'Best Seller',
            style: Styles.titleText,
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * .02,
          ),
          const BestSellerListViewItem()
        ],
      ),
    );
  }
}

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height * .2,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 1 / 1.5,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: const DecorationImage(
                        image: AssetImage(AssetData.testImage),
                        fit: BoxFit.fill)),
              ),
            ),
            SizedBox(
              width: MediaQuery.sizeOf(context).width * .06,
            ),
            const Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  BookName(),
                  AuthorName(),
                  PriceAndRatingOfBestSellerListViewBooksItem(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}




