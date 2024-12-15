import 'package:bookley_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.backgroundColor,
    this.borderRadius,
    required this.textColor,
    required this.text,
    this.onTap,
  });
  final Color backgroundColor;
  final BorderRadius? borderRadius;
  final Color textColor;
  final String text;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 60,
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius ??
                  BorderRadius.circular(
                    12,
                  ),
            ),
          ),
          onPressed: onTap,
          child: Text(
            text,
            style: Styles.textStyle18.copyWith(color: textColor),
          ),
        ),
      ),
    );
  }
}
