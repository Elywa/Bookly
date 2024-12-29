import 'package:bookley_app/features/home/domain/entities/book_entity.dart';
import 'package:bookley_app/features/home/presentation/manager/featured%20books%20cubit/featured_books_cubit.dart';
import 'package:bookley_app/features/home/presentation/manager/newest%20books%20cubit/fetch_newest_books_cubit.dart';
import 'package:bookley_app/features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatefulWidget {
  const BestSellerListView(
      {super.key,
      this.scrolling = const NeverScrollableScrollPhysics(),
      required this.books});
  final ScrollPhysics? scrolling;
  final List<BookEntity> books;

  @override
  State<BestSellerListView> createState() => _BestSellerListViewState();
}

class _BestSellerListViewState extends State<BestSellerListView> {
  late final ScrollController _scrollController;
  int nextPage = 1;
  bool isLoading = false;

  @override
  initState() {
     super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_onScroll);
   
  }

  void _onScroll() async {
    var currentPosition = _scrollController.position.pixels;
    var maxScrollLength = _scrollController.position.maxScrollExtent;
    if (currentPosition >= 0.7 * maxScrollLength)  {
      if (!isLoading) {
        isLoading = true;
        BlocProvider.of<FetchNewestBooksCubit>(context)
            .fetchNewestBooks(pageNumber: nextPage++);
        isLoading = false;
      }
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: _scrollController,
      padding: EdgeInsets.zero,
      itemCount: widget.books.length,
      shrinkWrap: true, // Allow the ListView to shrink to fit its children
      physics: widget.scrolling, // Disable independent scrolling
      itemBuilder: (context, index) {
        return BestSellerListViewItem(
          index: (index * index * 10 + 100).toInt(),
          book: widget.books[index],
        );
      },
    );
  }
}
