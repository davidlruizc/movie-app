part of 'movies_cubit.dart';

@freezed
class MoviesState with _$MoviesState {
  const factory MoviesState.initial(
      {Map<String, List<MovieListModel>>? moviesList}) = _Initial;
}
