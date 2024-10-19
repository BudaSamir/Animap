import 'package:equatable/equatable.dart';

import '../services/network_services/error_hander.dart';
import '../services/network_services/network_constants.dart';

class Failure extends Equatable {
  final int? statusCode;
  final String? status;
  final String? statusMessage;

  const Failure({this.statusCode, this.statusMessage, this.status});

  factory Failure.fromJson(Map<String, dynamic> json) {
    print("Failure => json => $json");
    return Failure(
      statusCode: json[NetworkConstants.statusCode],
      status: json[NetworkConstants.status],
      statusMessage: handleStatusMessage(json[NetworkConstants.statusCode],
          json[NetworkConstants.statusMessage]),
    );
  }

  /// Handling Status Message if There Just One Error Or There Many Errors
  static String handleStatusMessage(int? statusCode, dynamic statusMessage) {
    if (statusMessage.runtimeType == List) {
      return statusMessage.map((e) => e["msg"]).join("\n");
    } else if (statusMessage.runtimeType == String) {
      return statusMessage;
    }
    return ErrorHandler.statusCodeHandler(statusCode);
  }

  @override
  List<Object?> get props => [statusCode, statusMessage, status];
}
