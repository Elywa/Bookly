import 'package:bookley_app/core/utils/functions.dart';
import 'package:bookley_app/features/home/domain/entities/book_entity.dart';
import 'package:bookley_app/features/home/presentation/manager/featured%20books%20cubit/featured_books_cubit.dart';
import 'package:bookley_app/features/home/presentation/views/widgets/Featured_books_list_view_shimmer.dart';
import 'package:bookley_app/features/home/presentation/views/widgets/featured_books_list_view.dart';
import 'package:bookley_app/features/home/presentation/views/widgets/featured_books_list_view_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksBlocConsumer extends StatefulWidget {
  const FeaturedBooksBlocConsumer({
    super.key,
  });

  @override
  State<FeaturedBooksBlocConsumer> createState() =>
      _FeaturedBooksBlocConsumerState();
}

class _FeaturedBooksBlocConsumerState extends State<FeaturedBooksBlocConsumer> {
  List<BookEntity> books = [];
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FeaturedBooksCubit, FeaturedBooksState>(
      listener: (context, state) {
        if (state is FeaturedBooksSucess) {
          books.addAll(state.books);
        }
        if (state is FeaturedBooksPaginationFailuer) {
          showErrorSnackBar(context, state.message);
        }
      },
      builder: (context, state) {
        if (state is FeaturedBooksSucess ||
            state is FeaturedBooksPaginationLoading ||
            state is FeaturedBooksPaginationFailuer) {
          return FeaturedBooksListView(
            books: books,
          );
        } else if (state is FeaturedBooksFailure) {
          return Center(
            child: Text(state.message),
          );
        } else {
          return const FeaturedBooksListViewLoadingIndicator();
        }
      },
    );
  }
}
