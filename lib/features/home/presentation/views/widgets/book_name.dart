import 'package:bookley_app/core/utils/constants.dart';
import 'package:bookley_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookName extends StatelessWidget {
  const BookName({super.key, this.textAlign = TextAlign.start});
  final TextAlign? textAlign;
  @override
  Widget build(BuildContext context) {
    return Text(
      "Book Name Harry Potter ",
      textAlign: TextAlign.start,
      style: Styles.textStyle20.copyWith(
        fontFamily: kFontFamily3,
      ),
      overflow: TextOverflow.ellipsis,
      maxLines: 2,
    );
  }
}
