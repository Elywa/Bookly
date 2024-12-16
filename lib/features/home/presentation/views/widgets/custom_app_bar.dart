import 'package:bookley_app/core/utils/app_assets.dart';
import 'package:bookley_app/core/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            AssetData.logo,
            height: 20,
          ),
          IconButton(
              onPressed: () {
                GoRouter.of(context).push(AppRoutes.searchViewroute);
              },
              icon: const Icon(
                Icons.search,
                size: 28,
              ))
        ],
      ),
    );
  }
}
