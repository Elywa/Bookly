import 'package:bookley_app/core/utils/functions.dart';
import 'package:bookley_app/features/home/domain/entities/book_entity.dart';
import 'package:bookley_app/features/home/presentation/manager/newest%20books%20cubit/fetch_newest_books_cubit.dart';
import 'package:bookley_app/features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestBooksListViewBlocConsumer extends StatefulWidget {
  const NewestBooksListViewBlocConsumer({super.key});

  @override
  State<NewestBooksListViewBlocConsumer> createState() =>
      _NewestBooksListViewBlocConsumerState();
}

class _NewestBooksListViewBlocConsumerState
    extends State<NewestBooksListViewBlocConsumer> {
  List<BookEntity> books = [];

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FetchNewestBooksCubit, FetchNewestBooksState>(
      listener: (context, state) {
        if (state is FetchNewestBooksSucess) {
          books.addAll(state.books);
        }
        if (state is FetchNewestBooksPaginationFailure) {
          showErrorSnackBar(context, state.message);
        }
      },
      builder: (context, state) {
        if (state is FetchNewestBooksSucess ||
            state is FetchNewestBooksPaginationFailure ||
            state is FetchNewestBooksPaginationLoading) {
          return BestSellerListView(books: books);
        } else if (state is FetchNewestBooksFailure) {
          return  Center(
            child: Text(state.message),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
      
    );
  }
}
