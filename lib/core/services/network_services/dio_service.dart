import 'network.dart';

class DioService {
  DioService._();
  static final DioService _instance = DioService._();
  static DioService get instance => _instance;

  late Dio _dio;

  init() {
    _dio = Dio();
    _dio.interceptors.add(DioInterceptor());
    debugPrint("Dio Service Has initialized");
  }

  Future<Response> getData({
    required String path,
    Map<String, dynamic>? queryParameters,
    ProgressCallback? onReceiveProgress,
    String? token,
  }) async {
    try {
      final Response response = await _dio.get(
        path,
        queryParameters: queryParameters,
        onReceiveProgress: onReceiveProgress,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> postData({
    required String path,
    required Map<String, dynamic> data,
    bool isFormData = false,
    String? token,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response response = await _dio.post(
        path,
        data: isFormData ? FormData.fromMap(data) : data,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> patchData({
    required String path,
    required Map<String, dynamic> data,
    bool isFormData = false,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response response = await _dio.patch(
        path,
        data: isFormData ? FormData.fromMap(data) : data,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> putData({
    required String path,
    required Map<String, dynamic> data,
    bool isFormData = false,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response response = await _dio.put(
        path,
        data: isFormData ? FormData.fromMap(data) : data,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> deleteData({required String path}) async {
    try {
      final Response response = await _dio.delete(path);
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
