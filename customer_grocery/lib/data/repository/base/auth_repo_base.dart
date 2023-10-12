import "dart:async";

import "package:customer_grocery/data/models/response/auth/login/login_model.dart";
import "package:customer_grocery/data/models/response/auth/signup/sign_up_model.dart";
import "package:customer_grocery/data/network/failure_exception.dart";
import "package:dartz/dartz.dart";
// import "package:dartz/dartz.dart";

abstract class AuthBaseRepo {
  Future<Either<FailureException, bool>> userLogout();

  Future<Either<FailureException, bool>> userToken(
      {String? grantType, required String username, required String password});

  Future<Either<FailureException, LoginModel>> userLogin(
      {required String username,
      required String password,
      bool? rememberMe,
      bool? success});

  Future<Either<FailureException, SignUpModel>> userSignUp({
    required String email,
    required String password,
    required String username,
    String? phoneNumber,
  });
}
