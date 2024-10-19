import '../../../flavor_config.dart';

class NetworkConstants {
  static final statusCode = "statusCode";
  static final status = "status";
  static final statusMessage = "message";
}

class EndPoints {
  static final String baseUrl = FlavorConfig.instance.baseURL;
  static final String apiURL = baseUrl + FlavorConfig.instance.apiURL;
}
