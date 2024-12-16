import 'package:bookley_app/features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:flutter/cupertino.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView(
      {super.key, this.scrolling = const NeverScrollableScrollPhysics()});
  final ScrollPhysics? scrolling;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 20,
      shrinkWrap: true, // Allow the ListView to shrink to fit its children
      physics: scrolling, // Disable independent scrolling
      itemBuilder: (context, index) {
        return const BestSellerListViewItem();
      },
    );
  }
}
