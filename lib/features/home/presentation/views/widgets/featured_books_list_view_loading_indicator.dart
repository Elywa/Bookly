import 'package:bookley_app/core/utils/custom_fading_widget.dart';
import 'package:bookley_app/features/home/presentation/views/widgets/custom_book_image_loading_indicator.dart';
import 'package:bookley_app/features/home/presentation/views/widgets/featured_list_view_item.dart';
import 'package:flutter/material.dart';

class FeaturedBooksListViewLoadingIndicator extends StatelessWidget {
  const FeaturedBooksListViewLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomFadingWidget(
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height * .27,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 15,
          itemBuilder: (context, index) {
            return const CustomBookImageLoadingIndicator();
          },
        ),
      ),
    );
  }
}
