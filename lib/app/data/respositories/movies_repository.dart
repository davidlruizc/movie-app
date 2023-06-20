import 'package:either_dart/either.dart';
import 'package:either_dart/src/either.dart';
import 'package:movie_app/app/core/constants/api_endpoints.dart';
import 'package:movie_app/app/data/dtos/get_movies_filter_dto.dart';
import 'package:movie_app/app/data/models/remote/error_response.dart';
import 'package:movie_app/app/data/models/remote/movie_model.dart';
import 'package:movie_app/app/domain/datasources/remote_datasource_interface.dart';
import 'package:movie_app/app/domain/repositories/movies_repository_interface.dart';

class MoviesRepository extends IMoviesRepository {
  final IRemoteDatasource remoteDatasource;

  MoviesRepository({required this.remoteDatasource});

  @override
  Future<Either<ErrorResponse, MovieListModel>> getMoviesList(
      GetMoviesFilterDto filter) async {
    var result = remoteDatasource
        .callGET("${MoviesEndpoints.getPopularMovies}${filter.page}");
    return result.fold((error) {
      return Left(error);
    }, (popularMovies) {
      var movies = MovieListModel.fromJson(popularMovies);
      return Right(movies);
    });
  }
}
