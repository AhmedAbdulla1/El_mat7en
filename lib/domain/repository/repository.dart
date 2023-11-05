import 'package:dartz/dartz.dart';
import 'package:tanta_app/data/network/failure.dart';
import 'package:tanta_app/data/network/requests.dart';
import 'package:tanta_app/data/response/responses.dart';
import 'package:tanta_app/domain/models/models.dart';

abstract class Repository {
  Future<Either<Failure, LoginAuthentication>> login(
      LoginRequest loginRequest);

  // Future<Either<Failure, Authentication>> register(
  //     RegisterRequest registerRequest);
  // Future<Either<Failure,SendEmail>>sendEmail(String email);
  Future<Either<Failure,String>>checkOtp(String otp);
  Future<Either<Failure, String>> forgotPassword(String email);

// Future<Either<Failure, String>> forgotPassword(String email);
// Future<Either<Failure, Home>> home();
// Future<Either<Failure, StoresDetails>> storeDetails();
}
