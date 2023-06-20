import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/dtos/get_movies_filter_dto.dart';
import '../../../data/models/remote/movie_model.dart';
import '../../../domain/usecases/get_movies_usecase.dart';

part 'movies_state.dart';
part 'movies_cubit.freezed.dart';

class MoviesCubit extends Cubit<MoviesState> {
  final BuildContext context;
  final GetMoviesUsecase getMoviesUsecase;

  MoviesCubit({required this.context, required this.getMoviesUsecase})
      : super(const MoviesState.initial(moviesList: null)) {}

  Future<void> getPopularMovies() async {
    var params = GetMoviesFilterDto(page: 1);
    var popularMoviesResult = await getMoviesUsecase.call(params: params);
    popularMoviesResult.fold((_) => null,
        (moviesList) => {
      var groupMovies = groupBy<MovieModel, String>(moviesList.results, (movies) => movies.)
          emit(state.copyWith(moviesList: moviesList));
        });
  }
}
