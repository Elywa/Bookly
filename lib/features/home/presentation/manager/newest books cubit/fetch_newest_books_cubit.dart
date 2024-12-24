import 'package:bloc/bloc.dart';
import 'package:bookley_app/features/home/domain/entities/book_entity.dart';
import 'package:meta/meta.dart';

part 'fetch_newest_books_state.dart';

class FetchNewestBooksCubit extends Cubit<FetchNewestBooksState> {
  FetchNewestBooksCubit() : super(FetchNewestBooksInitial());
}
