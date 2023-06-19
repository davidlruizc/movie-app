import 'package:either_dart/either.dart';
import 'package:movie_app/app/data/models/remote/error_response.dart';

abstract class IRemoteDatasource {
  Future<Either<ErrorResponse, dynamic>> callGET(String endpoint);
}
