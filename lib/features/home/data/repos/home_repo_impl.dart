import 'package:bookley_app/core/utils/failures.dart';
import 'package:bookley_app/features/home/data/data%20sources/home_local_data_source.dart';
import 'package:bookley_app/features/home/data/data%20sources/home_remote_data_source.dart';
import 'package:bookley_app/features/home/domain/entities/book_entity.dart';
import 'package:bookley_app/features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl extends HomeRepo {
  final HomeRemoteDataSourceImple remoteDataSource;
  final HomeLocalDataSourceImpl localDataSource;
  HomeRepoImpl({required this.localDataSource, required this.remoteDataSource});
  @override
  Future<Either<Failures, List<BookEntity>>> fetchFeaturedBooks(
      {int pageNumber = 0}) async {
    try {
      List<BookEntity> booksList;
      booksList = localDataSource.fetchFeaturedBooks(
        pageNumber: pageNumber,
      );
      if (booksList.isNotEmpty) {
        return right(booksList);
      }
      booksList = await remoteDataSource.fetchFeaturedBooks(
        pageNumber: pageNumber,
      );
      return right(booksList);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failures, List<BookEntity>>> fetchNewestBooks(
      {int pageNumber = 0}) async {
    try {
      List<BookEntity> booksList;
      booksList = localDataSource.fetchNewestBooks(
        pageNumber: pageNumber,
      );
      if (booksList.isNotEmpty) {
        return right(booksList);
      }
      booksList = await remoteDataSource.fetchNewestBooks(pageNumber: pageNumber);
      return right(booksList);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
