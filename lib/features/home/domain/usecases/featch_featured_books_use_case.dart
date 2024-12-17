import 'package:bookley_app/core/utils/failures.dart';
import 'package:bookley_app/features/home/domain/entities/book_entity.dart';
import 'package:bookley_app/features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class FeatchFeaturedBooksUseCase {
  final HomeRepo homeRepo;
  FeatchFeaturedBooksUseCase(this.homeRepo);

  Future<Either<Failures, List<BookEntity>>> fetchFeaturedBooks() {
    return homeRepo.fetchFeaturedBooks();
  }
}
