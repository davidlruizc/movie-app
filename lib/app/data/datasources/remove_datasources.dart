import 'package:dio/dio.dart';
import 'package:either_dart/src/either.dart';
import 'package:movie_app/app/data/models/remote/error_response.dart';
import '../../core/constants/api_endpoints.dart';
import '../../domain/datasources/remote_datasource_interface.dart';

class RemoteDatasource extends IRemoteDatasource {
  var dio = Dio();

  @override
  Future<Either<ErrorResponse, dynamic>> callGET(String endpoint) async {
    try {
      var token = ApiToken.getToken;
      final response = await dio.get(endpoint,
          options: Options(headers: {
            "Authorization": "Bearer $token",
          }));
      return Right(response.data);
    } catch (ex) {
      return createError(ex);
    }
  }

  Future<Either<ErrorResponse, dynamic>> createError(Object ex) async {
    if (ex is DioException) {
      DioException dioException = ex;
      if (dioException.response != null) {
        try {
          var error = ErrorResponse.fromJson(dioException.response!.data);
          return Left(error);
        } catch (_) {
          return Left(defaultError());
        }
      } else {
        return Left(defaultError());
      }
    } else {
      return Left(defaultError());
    }
  }

  ErrorResponse defaultError() {
    var error = ErrorResponse(
        code: "UNHANDLED_ERROR",
        message:
            "An error occurred while communicating with the server, please try again.");
    return error;
  }
}
