import 'package:bookley_app/core/utils/constants.dart';
import 'package:bookley_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookName extends StatelessWidget {
  const BookName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Book Name Harry Potter  Book Name Book Name Book Name ",
      textAlign: TextAlign.start,
      style: Styles.textStyle20,
      overflow: TextOverflow.ellipsis,
      maxLines: 2,
    );
  }
}
