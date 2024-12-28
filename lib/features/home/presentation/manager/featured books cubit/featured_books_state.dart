part of 'featured_books_cubit.dart';

@immutable
sealed class FeaturedBooksState {}

final class FeaturedBooksInitial extends FeaturedBooksState {}

final class FeaturedBooksLoading extends FeaturedBooksState {}

final class FeaturedBooksPaginationLoading extends FeaturedBooksState {}

final class FeaturedBooksPaginationFailuer extends FeaturedBooksState {
  final String message;
  FeaturedBooksPaginationFailuer(this.message);
}

final class FeaturedBooksSucess extends FeaturedBooksState {
  final List<BookEntity> books;
  FeaturedBooksSucess(this.books);
}

final class FeaturedBooksFailure extends FeaturedBooksState {
  final String message;
  FeaturedBooksFailure(this.message);
}
