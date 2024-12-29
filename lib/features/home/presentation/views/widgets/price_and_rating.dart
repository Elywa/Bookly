import 'package:bookley_app/core/utils/constants.dart';
import 'package:bookley_app/core/utils/styles.dart';
import 'package:bookley_app/features/home/domain/entities/book_entity.dart';
import 'package:bookley_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';

class PriceAndRatingOfBestSellerListViewBooksItem extends StatelessWidget {
  const PriceAndRatingOfBestSellerListViewBooksItem({
    super.key,
    required this.book,
    required this.index,
  });
  final int index;
  final BookEntity book;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(
            "Free",
            style: Styles.textStyle20.copyWith(
                fontWeight: FontWeight.bold, fontFamily: kFontFamily3),
          ),
        ),
        Expanded(
          child: BookRating(
            index: index,
            book: book,
          ),
        )
      ],
    );
  }
}
