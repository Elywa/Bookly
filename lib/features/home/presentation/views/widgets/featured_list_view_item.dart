import 'package:bookley_app/core/utils/app_assets.dart';
import 'package:bookley_app/core/utils/app_routes.dart';
import 'package:bookley_app/features/home/domain/entities/book_entity.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FeaturedListViewItem extends StatelessWidget {
  const FeaturedListViewItem({
    super.key,
    required this.book,
  });
  final BookEntity book;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: GestureDetector(
        onTap: () {
          GoRouter.of(context).pushNamed(AppRoutes.bookDetailsroute);
        },
        child: AspectRatio(
          aspectRatio: 2 / 3, //width / hieght
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: CachedNetworkImage(
              imageUrl: book.image ??
                  'https://developers.google.com/maps/documentation/streetview/error-messages',
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
