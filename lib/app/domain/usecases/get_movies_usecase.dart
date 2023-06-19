import 'package:movie_app/app/core/usecase/usecase.dart';
import 'package:movie_app/app/data/dtos/get_movies_filter_dto.dart';
import 'package:movie_app/app/data/models/remote/error_response.dart';
import 'package:movie_app/app/data/models/remote/movie_model.dart';
import '../repositories/movies_repository_interface.dart';
import 'package:either_dart/src/either.dart';

class GetMoviesUsecase implements UseCase<MovieListModel, GetMoviesFilterDto> {
  final IMoviesRepository moviesRepository;

  GetMoviesUsecase({required this.moviesRepository});

  @override
  Future<Either<ErrorResponse, MovieListModel>> call(
      {required GetMoviesFilterDto params}) async {
    var filter = GetMoviesFilterDto(page: params.page);
    var result = await moviesRepository.getMoviesList(filter);
    return result;
  }
}
