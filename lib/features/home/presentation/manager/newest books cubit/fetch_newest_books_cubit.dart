import 'package:bloc/bloc.dart';
import 'package:bookley_app/features/home/domain/entities/book_entity.dart';
import 'package:bookley_app/features/home/domain/usecases/fetch_newest_books_use_case.dart';
import 'package:meta/meta.dart';

part 'fetch_newest_books_state.dart';

class FetchNewestBooksCubit extends Cubit<FetchNewestBooksState> {
  FetchNewestBooksCubit(this.fetchNewestBooksUseCase)
      : super(FetchNewestBooksInitial());
  final FetchNewestBooksUseCase fetchNewestBooksUseCase;
  Future<void> fetchNewestBooks() async {
    emit(FetchNewestBooksLoading());
    var result = await fetchNewestBooksUseCase.call();
    result.fold(
      (failure) {
        emit(FetchNewestBooksFailure(failure.message));
      },
      (books) {
        emit(FetchNewestBooksSucess(books));
      },
    );
  }
}
