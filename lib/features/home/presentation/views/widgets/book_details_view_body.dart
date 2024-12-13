import 'package:bookley_app/features/home/presentation/views/widgets/book_details_view_appbar.dart';
import 'package:bookley_app/features/home/presentation/views/widgets/books_action_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                BookDetailsViewAppBar(),

                // const BooksActionButton(),
                SizedBox(
                  height: 15,
                ),
                BooksActionButton(),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
