import 'package:bookley_app/core/utils/failures.dart';
import 'package:bookley_app/features/home/domain/entities/book_entity.dart';
import 'package:bookley_app/features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class FeatchFeaturedBooksUseCase extends UseCase<List<BookEntity>, void> {
  final HomeRepo homeRepo;
  FeatchFeaturedBooksUseCase(this.homeRepo);

  @override
  Future<Either<Failures, List<BookEntity>>> call([void parameter]) async {
    return await homeRepo.fetchFeaturedBooks();
  }
}

abstract class UseCase<Type, param> {
  Future<Either<Failures, Type>> call([param parameter]);
}
