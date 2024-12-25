import 'package:bookley_app/core/utils/api_services.dart';
import 'package:bookley_app/core/utils/constants.dart';
import 'package:bookley_app/core/utils/functions.dart';
import 'package:bookley_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookley_app/features/home/domain/entities/book_entity.dart';
import 'package:hive/hive.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>> fetchFeaturedBooks();
  Future<List<BookEntity>> fetchNewestBooks();
}

class HomeRemoteDataSourceImple extends HomeRemoteDataSource {
  final ApiServices api;
  HomeRemoteDataSourceImple({required this.api});
  @override
  Future<List<BookEntity>> fetchFeaturedBooks() async {
    var data = await api.get(endPoint: kFetchFeaturedBookEndPoint);
    List<BookEntity> books = fetchBooksList(data);
     saveBoxData(books, kFeaturedBooks);
    return books;
  }

  List<BookEntity> fetchBooksList(Map<String, dynamic> data) {
    List<BookEntity> books = [];
    for (var book in data['items']) {
      books.add(BookModel.fromJson(book));
    }

    return books;
  }

  @override
  Future<List<BookEntity>> fetchNewestBooks() async {
    var data = await api.get(endPoint: kFetchNewestBooksEndPoint);
    List<BookEntity> books = fetchBooksList(data);

     saveBoxData(books, kNewestBooks);
    return books;
  }
}
