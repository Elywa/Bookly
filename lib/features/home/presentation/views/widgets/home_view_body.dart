import 'dart:ffi';

import 'package:bookley_app/core/utils/app_assets.dart';
import 'package:bookley_app/core/utils/constants.dart';
import 'package:bookley_app/core/utils/styles.dart';
import 'package:bookley_app/features/home/presentation/views/widgets/author_name.dart';
import 'package:bookley_app/features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:bookley_app/features/home/presentation/views/widgets/best_seller_list_view_item.dart';
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
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppBar(),
              const FeaturedBooksListView(),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * .06,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  'Best Seller',
                  style: Styles.textStyle18,
                ),
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * .02,
              ),
            ],
          ),
        ),
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: BestSellerListView(),
          ),
        )
      ],
    );
  }
}
