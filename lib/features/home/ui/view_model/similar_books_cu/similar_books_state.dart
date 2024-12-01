part of 'similar_books_cubit.dart';

sealed class SimilarBooksCubitState extends Equatable {
  const SimilarBooksCubitState();

  @override
  List<Object> get props => [];
}

class SimilarBooksCubitInitial extends SimilarBooksCubitState {}

class SimilarBooksCubitLoading extends SimilarBooksCubitState {}

class SimilarBooksCubitFailure extends SimilarBooksCubitState {
  final String errMessage;

  const SimilarBooksCubitFailure({required this.errMessage});
}

class SimilarBooksCubitSuccess extends SimilarBooksCubitState {
  final List<BookModel> books;

  const SimilarBooksCubitSuccess({required this.books});
}
