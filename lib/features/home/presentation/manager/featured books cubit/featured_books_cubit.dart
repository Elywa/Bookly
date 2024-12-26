import 'package:bloc/bloc.dart';
import 'package:bookley_app/features/home/domain/entities/book_entity.dart';
import 'package:bookley_app/features/home/domain/usecases/featch_featured_books_use_case.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  final FeatchFeaturedBooksUseCase featchFeaturedBooksUseCase;
  FeaturedBooksCubit(this.featchFeaturedBooksUseCase)
      : super(FeaturedBooksInitial());

  Future<void> getFeaturedBooks({int pageNumber = 0}) async {
    emit(FeaturedBooksLoading());

    final result = await featchFeaturedBooksUseCase.call(pageNumber);
    result.fold((fail) {
      emit(FeaturedBooksFailure(fail.message));
    }, (books) {
      emit(FeaturedBooksSucess(books));
    });
  }
}
