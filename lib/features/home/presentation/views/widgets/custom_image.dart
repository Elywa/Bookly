import 'package:bookley_app/core/utils/app_assets.dart';
import 'package:flutter/cupertino.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({super.key, this.aspectRatio = 1 / 1.5, this.image});
  final double aspectRatio;
  final String? image;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: aspectRatio,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(
              image: NetworkImage(image ??
                  "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.istockphoto.com%2Fphotos%2Ferror-message&psig=AOvVaw0QtNOjuM594FCvhEW9HJOy&ust=1735566093134000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCJCH79eNzYoDFQAAAAAdAAAAABAE"),
              fit: BoxFit.fill),
        ),
      ),
    );
  }
}
