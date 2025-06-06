import 'package:bookley_app/core/utils/styles.dart';
import 'package:bookley_app/features/home/presentation/manager/newest%20books%20cubit/fetch_newest_books_cubit.dart';
import 'package:bookley_app/features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:bookley_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookley_app/features/home/presentation/views/widgets/featured_books_cubit_bloc_consumer.dart';
import 'package:bookley_app/features/home/presentation/views/widgets/newest_books_list_view_bloc_consumer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppBar(),
              const FeaturedBooksBlocConsumer(),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * .06,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  'Newest Books',
                  style: Styles.textStyle18,
                ),
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * .02,
              ),
            ],
          ),
        ),
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: NewestBooksListViewBlocConsumer(),
          ),
        )
      ],
    );
  }
}
