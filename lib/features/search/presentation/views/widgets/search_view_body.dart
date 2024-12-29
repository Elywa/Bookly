import 'package:bookley_app/core/utils/styles.dart';
import 'package:bookley_app/features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:bookley_app/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:bookley_app/features/search/presentation/views/widgets/search_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 15,
          ),
          SearchTextField(),
          SizedBox(
            height: 20,
          ),
          Text(
            'Search Result',
            style: Styles.textStyle18,
          ),
          SizedBox(
            height: 15,
          ),
          Expanded(
            child: BestSellerListView(
              books: [],
              scrolling: BouncingScrollPhysics(),
            ),
          ),
        ],
      ),
    );
  }
}
