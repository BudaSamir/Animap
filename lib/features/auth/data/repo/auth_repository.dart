import 'package:dartz/dartz.dart';

import '../../../../core/services/network_services/error_hander.dart';
import '../../../../core/services/network_services/network.dart';
import '../data_source/remote/auth_remote_data_source.dart';
import '../models/login_request.dart';
import '../models/login_response.dart';

abstract class BaseAuthRepository {
  Future<Either<Failure, LoginResponse>> login(LoginRequest loginRequest);
}

class AuthRepository implements BaseAuthRepository {
  final BaseAuthRemoteDataSource authRemoteDataSource;

  AuthRepository(this.authRemoteDataSource);
  @override
  Future<Either<Failure, LoginResponse>> login(
      LoginRequest loginRequest) async {
    try {
      final response = await authRemoteDataSource.login(loginRequest);

      if (response.statusCode! >= 200 && response.statusCode! < 300) {
        return Right(LoginResponse.fromJson(response.data));
      }

      debugPrint(
          "AuthRepository => Login => Failure => ${response.data.toString()}");
      return left(Failure.fromJson(response.data));
    } on Exception catch (e) {
      debugPrint("AuthRepository => Login => Exception => ${e.toString()}");
      return left(ErrorHandler.exceptionHandler(e));
    }
  }
}
