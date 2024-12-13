import 'package:bookley_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          Icons.star,
          color: Colors.yellow,
        ),
        Text(
          "4.8",
          style: Styles.textStyle14,
        ),
        Text(
          "(2365)",
          style: Styles.textStyle14,
        ),
      ],
    );
  }
}
