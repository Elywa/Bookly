import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        focusedBorder: buildSearchTextFieldBorders(),
        enabledBorder: buildSearchTextFieldBorders(),
        hintText: "search",
        suffixIcon: IconButton(
          onPressed: () {},
          icon: const Opacity(
            opacity: .8,
            child: Icon(
              Icons.search,
              size: 28,
            ),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder buildSearchTextFieldBorders() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: const BorderSide(
        color: Colors.white,
      ),
    );
  }
}
