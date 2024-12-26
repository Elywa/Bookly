import 'package:bookley_app/core/utils/failures.dart';
import 'package:bookley_app/features/home/domain/entities/book_entity.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failures, List<BookEntity>>> fetchFeaturedBooks({int pageNumber = 0});
  Future<Either<Failures, List<BookEntity>>> fetchNewestBooks();
}
