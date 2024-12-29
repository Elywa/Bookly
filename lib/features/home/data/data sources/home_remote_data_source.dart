import 'package:bookley_app/core/utils/api_services.dart';
import 'package:bookley_app/core/utils/constants.dart';
import 'package:bookley_app/core/utils/functions.dart';
import 'package:bookley_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookley_app/features/home/domain/entities/book_entity.dart';
import 'package:hive/hive.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>> fetchFeaturedBooks({int pageNumber = 0});
  Future<List<BookEntity>> fetchNewestBooks({int pageNumber = 0});
}

class HomeRemoteDataSourceImple extends HomeRemoteDataSource {
  final ApiServices api;
  HomeRemoteDataSourceImple({required this.api});
  @override
  Future<List<BookEntity>> fetchFeaturedBooks({int pageNumber = 0}) async {
    var data = await api.get(
        endPoint:
            'volumes?Filtering=free-ebooks&q=science&startIndex=${pageNumber * 10}');
    List<BookEntity> books = parseListOfBooksFromJsonMap(data);
    saveBoxData(books, kFeaturedBooks);
    return books;
  }

  @override
  Future<List<BookEntity>> fetchNewestBooks({int pageNumber = 0}) async {
    var data = await api.get(
        endPoint:
            'volumes?Filtering=free-ebooks&q=ai&startIndex=${pageNumber * 10}&sorting=newest');
    List<BookEntity> books = parseListOfBooksFromJsonMap(data);

    saveBoxData(books, kNewestBooks);
    return books;
  }


    List<BookEntity> parseListOfBooksFromJsonMap(Map<String, dynamic> data) {
    List<BookEntity> books = [];
    for (var book in data['items']) {
      books.add(BookModel.fromJson(book));
    }

    return books;
  }
}
