import 'package:either_dart/either.dart';
import '../../data/models/remote/error_response.dart';

abstract class UseCase<T, P> {
  Future<Either<ErrorResponse, T>> call({required P params});
}

class NoParams {}