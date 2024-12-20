import 'package:bookley_app/core/utils/app_assets.dart';
import 'package:flutter/cupertino.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({super.key, this.aspectRatio = 1 / 1.5});
  final double aspectRatio;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: aspectRatio,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: const DecorationImage(
              image: AssetImage(AssetData.testImage), fit: BoxFit.fill),
        ),
      ),
    );
  }
}
