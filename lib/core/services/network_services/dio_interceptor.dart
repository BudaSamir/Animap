import 'network.dart';

class DioInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.baseUrl = EndPoints.baseUrl;
    options.headers.addAll({
      "Authorization": "Bearer ",
      'accept': 'application/json',
      'content-type':
          options.data != null ? 'application/json' : 'multipart/form-data',
      'Accept-Language':
          CacheService.instance.getCacheLanguageCode() == 'en_EN' ? 'en' : 'ar',
    });
    options.connectTimeout =
        options.receiveTimeout = const Duration(seconds: 30);
    debugPrint("${"=" * 35}\n DioInterceptor: onRequest \n${"=" * 35}");
    debugPrint('Send Request to:${options.uri}\n'
        'Sent Headers: ${options.headers}\n'
        'Sent Query Parameters: ${options.queryParameters}\n'
        'Sent Data: ${options.data}\n');
    super.onRequest(options, handler);
  }

  @override
  onResponse(Response response, ResponseInterceptorHandler handler) {
    debugPrint("${"=" * 35}\n DioInterceptor: onResponse \n${"=" * 35}");
    debugPrint('Receive Response From:${response.requestOptions.uri}\n'
        'Response Status Code: ${response.statusCode}\n'
        'Response Status Message: ${response.statusMessage}\n'
        'Response Headers queryParameters: ${response.requestOptions.queryParameters}\n'
        'Response Headers: ${response.headers}'
        'Response is: ${response.data}');
    super.onResponse(response, handler);
  }

  @override
  onError(DioException err, ErrorInterceptorHandler handler) {
    debugPrint("${"=" * 35}\n DioInterceptor: onError \n${"=" * 35}");
    debugPrint('Exception Status Code: ${err.response?.statusCode}\n'
        'Exception Type: ${err.type}\n'
        'Exception StatusMessage: ${err.response?.data[NetworkConstants.statusMessage]}');
    super.onError(err, handler);
  }
}
