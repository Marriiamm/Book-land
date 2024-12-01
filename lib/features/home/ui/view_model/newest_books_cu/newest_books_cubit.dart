// ignore_for_file: depend_on_referenced_packages

import "package:bloc/bloc.dart";
import 'package:equatable/equatable.dart';

import '../../../data/models/book_model/book_model.dart';
import '../../../data/repos/home_repo.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());
  final HomeRepo homeRepo;

  Future<void> newestBooks() async {
    emit(NewestBooksLoading());
    var result = await homeRepo.fetcNewestBooks();
    result.fold((failure) {
      emit(NewestBooksFailure(errMessage: failure.errMessage));
    }, (books) {
      emit(NewestBooksSuccess(books: books));
    });
  }
}
