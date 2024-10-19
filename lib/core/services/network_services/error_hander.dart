import 'network.dart';

class ErrorHandler {
  static Failure exceptionHandler(dynamic error) {
    debugPrint(
        "${"=" * 200}\n exceptionHandler: ${error.runtimeType.toString()} \n${"=" * 200}");

    if (error is DioException) {
      switch (error.type) {
        case DioExceptionType.badResponse:
          return Failure.fromJson(error.response?.data);
        case DioExceptionType.connectionError:
          return Failure(
            statusCode: error.response?.statusCode,
            statusMessage: "Connection to server failed",
          );
        case DioExceptionType.cancel:
          return Failure(
            statusCode: error.response?.statusCode,
            statusMessage: "Request to the server was cancelled",
          );
        case DioExceptionType.connectionTimeout:
          return Failure(
            statusCode: error.response?.statusCode,
            statusMessage: "Connection timeout with the server",
          );
        case DioExceptionType.unknown:
          return Failure(
            statusCode: error.response?.statusCode,
            statusMessage:
                "Connection to the server failed due to internet connection",
          );
        case DioExceptionType.receiveTimeout:
          return Failure(
            statusCode: error.response?.statusCode,
            statusMessage: "Receive timeout in connection with the server",
          );
        case DioExceptionType.sendTimeout:
          return Failure(
            statusCode: error.response?.statusCode,
            statusMessage: "Send timeout in connection with the server",
          );
        default:
          return Failure(
            statusCode: error.response?.statusCode,
            statusMessage: "Something went wrong",
          );
      }
    } else {
      return Failure(
        statusCode: error.response?.statusCode,
        statusMessage: "Unknown error occurred",
      );
    }
  }

  static String statusCodeHandler(int? statusCode) {
    switch (statusCode) {
      case 400:
        return "Bad request";
      case 401:
        return 'Unauthorized';
      case 403:
        return 'Forbidden';
      case 404:
        return "not found";
      case 500:
        return 'Internal server error';
      case 502:
        return 'Bad gateway';
      default:
        return 'Oops something went wrong';
    }
  }
}
