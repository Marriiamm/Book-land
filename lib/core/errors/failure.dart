import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  const Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure("connection Timeout with api server");
      case DioExceptionType.sendTimeout:
        return ServerFailure("send Timeout with api server");
      case DioExceptionType.receiveTimeout:
        return ServerFailure("receive Timeout with api server");
      case DioExceptionType.badCertificate:
        return ServerFailure("bad Certificate with api server");
      case DioExceptionType.badResponse:
        return ServerFailure.fromBadResponse(dioError.response!.statusCode!, dioError.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure("Request Cancelled");
      case DioExceptionType.connectionError:
        return ServerFailure("Connection Error with api server");
      case DioExceptionType.unknown:
        if(dioError.message!.contains('SocketException')){
          return ServerFailure("No Internet Connection");
        }
        return ServerFailure("UnExpected Error, try Again");
      default:
        return ServerFailure("Oops , There Was An Error");

    }
  }

  factory ServerFailure.fromBadResponse(int statusCode, dynamic response)
  {
    if(statusCode == 400 || statusCode == 401 || statusCode == 403){
      return ServerFailure(response['error']['message']);
    }else if (statusCode == 404){
      return ServerFailure("Request Not Found , 404");
    }else if (statusCode == 500){
      return ServerFailure("Internal Server Error , Please Try Later");
    }else{
      return ServerFailure("Oops , There Was An Error");
    }
  }
}
