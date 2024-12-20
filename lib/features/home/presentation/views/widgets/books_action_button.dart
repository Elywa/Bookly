import 'package:bookley_app/features/home/presentation/views/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BooksActionButton extends StatelessWidget {
  const BooksActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CustomButton(
          text: 'Free',
          backgroundColor: Colors.white,
          textColor: Colors.black,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            bottomLeft: Radius.circular(16),
          ),
        ),
        CustomButton(
          onTap: () {},
          text: 'Preview',
          backgroundColor: const Color(0xffEF8262),
          textColor: Colors.white,
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(16), bottomRight: Radius.circular(16)),
        )
      ],
    );
  }
}
