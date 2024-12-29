import 'package:bookley_app/core/utils/constants.dart';
import 'package:bookley_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class AuthorName extends StatelessWidget {
  const AuthorName({
    super.key, this.name,
  });
  final String? name;
  @override
  Widget build(BuildContext context) {
    return Text(
      name ?? "UnKnown",
      textAlign: TextAlign.start,
      style: Styles.textStyle14
          .copyWith(fontFamily: kfontFamily, color: const Color(0xff809870)),
      overflow: TextOverflow.ellipsis,
      maxLines: 2,
    );
  }
}
