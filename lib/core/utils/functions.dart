import 'package:bookley_app/features/home/domain/entities/book_entity.dart';
import 'package:hive/hive.dart';
import 'package:flutter/material.dart';

// void showErrorSnackBar(BuildContext context, String message) {
//   ScaffoldMessenger.of(context).showSnackBar(
//     SnackBar(
//       content: Text(
//         message,
//         style: const TextStyle(color: Colors.white),
//       ),
//       backgroundColor: Colors.red,
//       behavior: SnackBarBehavior.floating,
//       duration: const Duration(seconds: 3),
//     ),
//   );
// }
import 'package:flutter/material.dart';

void showErrorSnackBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Row(
        children: [
       const   Icon(Icons.error_outline, color: Colors.amber, size: 28), // Gold icon
        const  SizedBox(width: 12),
          Expanded(
            child: Text(
              message,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Color(0xFF2A0C47), // Dark purple to match the app
      behavior: SnackBarBehavior.floating,
      duration: Duration(seconds: 4),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      elevation: 6,
    ),
  );
}


void saveBoxData(List<BookEntity> books, String boxName) {
  var box = Hive.box<BookEntity>(boxName);
  box.addAll(books);
}
