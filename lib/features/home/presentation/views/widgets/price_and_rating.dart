import 'package:bookley_app/core/utils/constants.dart';
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
            style: Styles.titleText.copyWith(
                fontFamily: kfontFamily,
                fontSize: 20,
                color: const Color(0xff809870)),
          ),
        ),
        const Expanded(
          child: BookRating(),
        )
      ],
    );
  }
}