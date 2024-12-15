import 'package:bookley_app/core/utils/styles.dart';
import 'package:bookley_app/features/home/presentation/views/widgets/author_name.dart';
import 'package:bookley_app/features/home/presentation/views/widgets/book_details_view_appbar.dart';
import 'package:bookley_app/features/home/presentation/views/widgets/book_name.dart';
import 'package:bookley_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookley_app/features/home/presentation/views/widgets/books_action_button.dart';
import 'package:bookley_app/features/home/presentation/views/widgets/custom_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const BookDetailsViewAppBar(),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.018,
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.35,
              width: MediaQuery.sizeOf(context).width * .5,
              child: const CustomImage(
                aspectRatio: 1 / 1.5,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const BookName(
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 10,
            ),
            const AuthorName(),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: MediaQuery.sizeOf(context).width * .5,
              child: const BookRating(),
            ),
            const SizedBox(
              height: 25,
            ),
            const BooksActionButton(),
            const SizedBox(
              height: 15,
            ),
            const Row(
              children: [
                Text(
                  'You can also like',
                  style: Styles.textStyle18,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const LikesBooksListView(),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

class LikesBooksListView extends StatelessWidget {
  const LikesBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.sizeOf(context).height * .18,
      child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return SizedBox(
              width: MediaQuery.sizeOf(context).width * .25,
              height: MediaQuery.sizeOf(context).height * .18,
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.0),
                child: CustomImage(
                  aspectRatio: 1 / 1.5,
                ),
              ),
            );
          }),
    );
  }
}
