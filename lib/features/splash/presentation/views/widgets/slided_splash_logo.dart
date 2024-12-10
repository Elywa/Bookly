import 'package:bookley_app/core/utils/app_assets.dart';
import 'package:flutter/material.dart';

class SlidedSplashLogo extends StatelessWidget {
  late Animation<Offset> logoSlidedAnimation;
  SlidedSplashLogo({required this.logoSlidedAnimation});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: logoSlidedAnimation,
        builder: (context, _) {
          return SlideTransition(
              position: logoSlidedAnimation,
              child: Image.asset(AssetData.logo));
        });
  }
}
