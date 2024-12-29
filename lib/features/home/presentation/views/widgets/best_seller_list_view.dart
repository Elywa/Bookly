import 'package:bookley_app/features/home/domain/entities/book_entity.dart';
import 'package:bookley_app/features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:flutter/cupertino.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView(
      {super.key,
      this.scrolling = const NeverScrollableScrollPhysics(),
      required this.books});
  final ScrollPhysics? scrolling;
  final List<BookEntity> books;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: books.length,
      shrinkWrap: true, // Allow the ListView to shrink to fit its children
      physics: scrolling, // Disable independent scrolling
      itemBuilder: (context, index) {
        return BestSellerListViewItem(
          index: (index * index * 10 + 100).toInt(),
          book: books[index],
        );
      },
    );
  }
}
