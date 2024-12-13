import 'package:bookley_app/core/utils/styles.dart';
import 'package:bookley_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';

class PriceAndRatingOfBestSellerListViewBooksItem extends StatelessWidget {
  const PriceAndRatingOfBestSellerListViewBooksItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(
            "100  \$",
            style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        const Expanded(
          child: BookRating(),
        )
      ],
    );
  }
}
