import 'package:bookley_app/core/utils/failures.dart';
import 'package:bookley_app/core/utils/use_case.dart';
import 'package:bookley_app/features/home/domain/entities/book_entity.dart';
import 'package:bookley_app/features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class FeatchFeaturedBooksUseCase extends UseCase<List<BookEntity>, int> {
  final HomeRepo homeRepo;
  FeatchFeaturedBooksUseCase(this.homeRepo);

  @override
  Future<Either<Failures, List<BookEntity>>> call([int param = 0]) async {
    return await homeRepo.fetchFeaturedBooks(pageNumber: param);
  }
}
