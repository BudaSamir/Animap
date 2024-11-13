import '../../../../../core/services/network_services/network.dart';
import '../../models/login_request.dart';

abstract class BaseAuthRemoteDataSource {
  Future<Response> login(LoginRequest? loginRequest);
  // Future<Response> google(LoginRequest loginRequest);
  // Future<Response> x(LoginRequest loginRequest);
  // Future<Response> face(LoginRequest loginRequest);
}

class AuthRemoteDataSource implements BaseAuthRemoteDataSource {
  @override
  Future<Response> login(LoginRequest? loginRequest) async {
    try {
      return await DioService.instance.postData(
        path: EndPoints.login,
        data: loginRequest!.toJson(),
      );
    } catch (e) {
      rethrow;
    }
  }
}

// class GoogleAuthRemoteDataSource implements BaseAuthRemoteDataSource {
//   @override
//   Future<Response> login(LoginRequest? loginRequest) async {
//     try {
//       // return await DioService.instance.postData(
//       //   path: EndPoints.login,
//       //   data: loginRequest.toJson(),
//       // );
//     } catch (e) {
//       rethrow;
//     }
//   }
// }
// class AuthRemoteDataSource implements BaseAuthRemoteDataSource {
//   @override
//   Future<Response> login(LoginRequest loginRequest) async {
//     try {
//       return await DioService.instance.postData(
//         path: EndPoints.login,
//         data: loginRequest.toJson(),
//       );
//     } catch (e) {
//       rethrow;
//     }
//   }
// }
// class AuthRemoteDataSource implements BaseAuthRemoteDataSource {
//   @override
//   Future<Response> login(LoginRequest loginRequest) async {
//     try {
//       return await DioService.instance.postData(
//         path: EndPoints.login,
//         data: loginRequest.toJson(),
//       );
//     } catch (e) {
//       rethrow;
//     }
//   }
// }
