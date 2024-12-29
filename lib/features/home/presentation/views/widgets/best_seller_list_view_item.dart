import 'package:bookley_app/core/utils/app_assets.dart';
import 'package:bookley_app/core/utils/app_routes.dart';
import 'package:bookley_app/features/home/domain/entities/book_entity.dart';
import 'package:bookley_app/features/home/presentation/views/widgets/author_name.dart';
import 'package:bookley_app/features/home/presentation/views/widgets/book_name.dart';
import 'package:bookley_app/features/home/presentation/views/widgets/custom_image.dart';
import 'package:bookley_app/features/home/presentation/views/widgets/price_and_rating.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key, required this.book, required this.index});
  final BookEntity book;
  final int index ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16, bottom: 12, top: 12),
      child: GestureDetector(
        onTap: () {
          GoRouter.of(context).push(AppRoutes.bookDetailsroute);
        },
        child: SizedBox(
          height: MediaQuery.sizeOf(context).height * .18,
          child: Row(
            children: [
              CustomImage(
                image: book.image,
              ),
              SizedBox(
                width: MediaQuery.sizeOf(context).width * .06,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    BookName(
                      name: book.title,
                    ),
                    AuthorName(
                      name: book.authorName,
                    ),
                    PriceAndRatingOfBestSellerListViewBooksItem(
                      index: index,
                      book: book,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
