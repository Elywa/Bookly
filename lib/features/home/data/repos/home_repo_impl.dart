import 'package:bookley_app/core/utils/failures.dart';
import 'package:bookley_app/features/home/data/data%20sources/home_local_data_source.dart';
import 'package:bookley_app/features/home/data/data%20sources/home_remote_data_source.dart';
import 'package:bookley_app/features/home/domain/entities/book_entity.dart';
import 'package:bookley_app/features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl extends HomeRepo {
  final HomeRemoteDataSourceImple remoteDataSource;
  final HomeLocalDataSourceImpl localDataSource;
  HomeRepoImpl({required this.localDataSource, required this.remoteDataSource});
  @override
  Future<Either<Failures, List<BookEntity>>> fetchFeaturedBooks() async {
    try {
      var booksList = localDataSource.fetchFeaturedBooks();
      if (booksList.isNotEmpty) {
        return right(booksList);
      }
      var books = await remoteDataSource.fetchFeaturedBooks();
      return right(books);
    } catch (e) {
      return left(Failures());
    }
  }

  @override
  Future<Either<Failures, List<BookEntity>>> fetchNewestBooks() {
    throw UnimplementedError();
  }
}
