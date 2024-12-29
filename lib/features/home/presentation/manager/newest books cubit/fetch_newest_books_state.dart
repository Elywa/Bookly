part of 'fetch_newest_books_cubit.dart';

@immutable
sealed class FetchNewestBooksState {}

final class FetchNewestBooksInitial extends FetchNewestBooksState {}

final class FetchNewestBooksLoading extends FetchNewestBooksState {}

final class FetchNewestBooksPaginationLoading extends FetchNewestBooksState {}

final class FetchNewestBooksSucess extends FetchNewestBooksState {
  final List<BookEntity> books;
  FetchNewestBooksSucess(this.books);
}

final class FetchNewestBooksFailure extends FetchNewestBooksState {
  final String message;
  FetchNewestBooksFailure(this.message);
}

final class FetchNewestBooksPaginationFailure extends FetchNewestBooksState {
  final String message;
  FetchNewestBooksPaginationFailure(this.message);
}
