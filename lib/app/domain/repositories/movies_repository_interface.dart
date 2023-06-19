import 'package:either_dart/either.dart';
import 'package:movie_app/app/data/dtos/get_movies_filter_dto.dart';
import 'package:movie_app/app/data/models/remote/error_response.dart';
import 'package:movie_app/app/data/models/remote/movie_model.dart';

abstract class IMoviesRepository {
  Future<Either<ErrorResponse, MovieListModel>> getMoviesList(
      GetMoviesFilterDto filter);
}
