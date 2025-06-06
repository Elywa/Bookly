import 'package:dio/dio.dart';

abstract class Failures {
  final String message;
  Failures(this.message);
}

class ServerFailure extends Failures {
  ServerFailure(super.message);

  factory ServerFailure.fromDioError(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection Timeout with the server');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send Timeout in connection with the server');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive Timeout in connection with the server');
      case DioExceptionType.badCertificate:
        return ServerFailure('Bad Certificate with the server');

      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            e.response!.statusCode!, e.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('Request to server was cancelled');
      case DioExceptionType.connectionError:
        return ServerFailure(
            'Connection to server failed due to internet connection');
      case DioExceptionType.unknown:
        return ServerFailure('Unknown error occurred, please try again');
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your request not found, please try again later');
    } else if (statusCode == 500) {
      return ServerFailure('Internal Server error! , please try later');
    } else {
      return ServerFailure('Unexpected error! , please try later');
    }
  }
}
