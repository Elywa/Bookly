import 'package:bookley_app/core/utils/constants.dart';
import 'package:bookley_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookName extends StatelessWidget {
  const BookName({super.key, this.textAlign = TextAlign.start, this.name});
  final TextAlign? textAlign;
  final String? name;
  @override
  Widget build(BuildContext context) {
    return Text(
      name ?? "UnKnown",
      textAlign: TextAlign.start,
      style: Styles.textStyle20.copyWith(
        fontFamily: kFontFamily3,
      ),
      overflow: TextOverflow.ellipsis,
      maxLines: 2,
    );
  }
}
