import 'package:customer_grocery/core/di/injection_container.dart';
import 'package:customer_grocery/data/models/response/auth/login/login_model.dart';
import 'package:customer_grocery/data/models/response/auth/signup/sign_up_model.dart';
import 'package:customer_grocery/data/network/dio_helper.dart';
import 'package:customer_grocery/data/network/end_points.dart';
import 'package:customer_grocery/data/network/failure_exception.dart';
import 'package:customer_grocery/data/repository/base/auth_repo_base.dart';
import 'package:dartz/dartz.dart';

class AuthRepoImpl implements AuthBaseRepo {
  final DioHelper dioHelper;

  AuthRepoImpl({required this.dioHelper});
  @override
  Future<Either<FailureException, bool>> userToken({
    String? grantType,
    required String username,
    required String password,
  }) async {
    try {
      final response = await DioHelper.postData(
          formUrlEncodedContentType: true,
          url: tokenEndPoint,
          data: {
            "grant_type": grantType ?? "password",
            "username": username,
            "password": password,
          });
      prefs.setString(accessToken, response.data['access_token']);
      return const Right(true);
    } catch (e) {
      return Left(FailureException(message: e.toString()));
    }
  }

  @override
  userLogin(
      {required String username,
      required String password,
      bool? rememberMe,
      bool? success}) async {
    LoginModel loginModel;
    try {
      final response = await DioHelper.postData(url: loginEndPoint, data: {
        "userName": username,
        "password": password,
        "rememberMe": rememberMe
      });

      loginModel = LoginModel.fromJson(response.data);
      if (loginModel.succeeded) {
        userToken(password: password, username: username);
        success = true;
      }

      return Right(loginModel);
    } catch (e) {
      return Left(FailureException(message: e.toString()));
    }
  }

  @override
  userSignUp({
    String? email,
    required String username,
    required String password,
    String? phoneNumber,
  }) async {
    SignUpModel signUpModel;
    try {
      var result = await DioHelper.postData(
        url: createUserEndPoint,
        data: {
          "email": email,
          "roles": [],
          "userType": "Admin",
          "userName": username,
          "password": password,
          "status": "New",
        },
      );
      signUpModel = SignUpModel.fromJson(result.data);
      if (signUpModel.succeeded) {
        userToken(
          username: username,
          password: password,
        );
      }
      return Right(signUpModel);
    } catch (e) {
      return Left(FailureException(message: e.toString()));
    }
  }

  @override
  Future<Either<FailureException, bool>> userLogout() async {
    try {
      var result = await DioHelper.getData(
        url: signoutEndPoint,
        token: // prefs.getString(accessToken)??
            token,
      );
      if (result.statusCode == 204) {
        prefs.remove(accessToken);
      }
      return const Right(true);
    } catch (error) {
      return Left(FailureException(message: error.toString()));
    }
  }
}
