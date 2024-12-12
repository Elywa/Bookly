import 'package:bookley_app/core/utils/app_assets.dart';
import 'package:flutter/material.dart';

class FeaturedListViewItem extends StatelessWidget {
  const FeaturedListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: AspectRatio(
        aspectRatio: 2 / 3, //width / hieght
        child: Container(
          decoration: BoxDecoration(
            image: const DecorationImage(
                image: AssetImage(AssetData.testImage), fit: BoxFit.fill),
            borderRadius: BorderRadius.circular(16),
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
