import 'package:bookley_app/core/utils/app_assets.dart';
import 'package:bookley_app/core/utils/styles.dart';
import 'package:bookley_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookley_app/features/home/presentation/views/widgets/featured_books_list_view.dart';
import 'package:bookley_app/features/home/presentation/views/widgets/featured_list_view_item.dart';
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
          )
        ],
      ),
    );
  }
}
