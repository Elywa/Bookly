import 'dart:ffi';

import 'package:bookley_app/core/utils/app_assets.dart';
import 'package:bookley_app/core/utils/constants.dart';
import 'package:bookley_app/core/utils/styles.dart';
import 'package:bookley_app/features/home/presentation/views/widgets/author_name.dart';
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
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: CustomScrollView(
        physics: const NeverScrollableScrollPhysics(),
        slivers: [
          // AppBar and FeaturedBooksListView as separate SliverToBoxAdapter
          const SliverToBoxAdapter(child: CustomAppBar()),
          const SliverToBoxAdapter(child: FeaturedBooksListView()),
          SliverToBoxAdapter(
            child: SizedBox(
              height: MediaQuery.sizeOf(context).height * .06,
            ),
          ),
          const SliverToBoxAdapter(
            child: Text(
              'Best Seller',
              style: Styles.textStyle18,
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: MediaQuery.sizeOf(context).height * .02,
            ),
          ),
          // Filling remaining space with BestSellerListView
          const SliverFillRemaining(
            hasScrollBody: true,
            child: BestSellerListView(),
          ),
        ],
      ),
    );
  }
}

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 20,
      shrinkWrap: true, // Allow the ListView to shrink to fit its children
      physics: const BouncingScrollPhysics(), // Disable independent scrolling
      itemBuilder: (context, index) {
        return const BestSellerListViewItem();
      },
    );
  }
}
