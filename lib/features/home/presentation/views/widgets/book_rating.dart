import 'package:bookley_app/core/utils/styles.dart';
import 'package:bookley_app/features/home/domain/entities/book_entity.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    required this.book,
    required this.index,
  });
  final BookEntity book;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Icon(
          Icons.star,
          color: Colors.yellow,
        ),
        Text(
          "(${(index % 2 + 3.8).toString()})",
          style: Styles.textStyle14,
        ),
        Text(
          "$index",
          style: Styles.textStyle14.copyWith(color: Colors.grey),
        ),
      ],
    );
  }
}
