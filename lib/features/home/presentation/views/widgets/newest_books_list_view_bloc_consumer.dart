import 'package:bookley_app/features/home/presentation/manager/newest%20books%20cubit/fetch_newest_books_cubit.dart';
import 'package:bookley_app/features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestBooksListViewBlocConsumer extends StatelessWidget {
  const NewestBooksListViewBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FetchNewestBooksCubit, FetchNewestBooksState>(
      builder: (context, state) {
        if (state is FetchNewestBooksSucess) {
          return BestSellerListView(books: state.books);
        } else if (state is FetchNewestBooksFailure) {
          return const Center(
            child: Text('Failed to load books'),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
      listener: (context, state) {},
    );
  }
}