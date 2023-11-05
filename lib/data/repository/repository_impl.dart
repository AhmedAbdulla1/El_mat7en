import 'package:dartz/dartz.dart';
import 'package:tanta_app/data/data_source/remote_data_source.dart';
import 'package:tanta_app/data/mapper/mapper.dart';
import 'package:tanta_app/data/network/error_handler.dart';
import 'package:tanta_app/data/network/failure.dart';
import 'package:tanta_app/data/network/network_info.dart';
import 'package:tanta_app/data/network/requests.dart';
import 'package:tanta_app/data/response/responses.dart';
import 'package:tanta_app/domain/models/models.dart';
import 'package:tanta_app/domain/repository/repository.dart';

class RepositoryImpl implements Repository {
  // final LocalDataSource _localDataSource;
  final RemoteDataSource _remoteDataSource;
  final NetWorkInfo _networkInfo;

  RepositoryImpl(// this._localDataSource,
      this._remoteDataSource,
      this._networkInfo,);

  @override
  Future<Either<Failure, LoginAuthentication>> login(
      LoginRequest loginRequest) async {
    if (await _networkInfo.isConnected) {
      try {
        final LoginAuthenticationResponse response =
        await _remoteDataSource.loginResponse(
          loginRequest,
        );

        if (response.status == ApiInternalStatus.success) {
          // _localDataSource.saveHomeToCache(response);
          return Right(
            response.toDomain(),
          );
        } else {
          return Left(
            Failure(
              code: ApiInternalStatus.failure,
              message: response.message ?? ResponseMessage.customDefault,
            ),
          );
        }
      } catch (error) {
        return Left(
          ErrorHandler
              .handle(error)
              .failure,
        );
      }
    } else {
      return Left(
        DataSource.noInternetConnection.getFailure(),
      );
    }
  }
  //
  // @override
  // Future<Either<Failure, Authentication>> register(
  //     RegisterRequest registerRequest) async {
  //   if (await _networkInfo.isConnected) {
  //     try {
  //       final AuthenticationResponse response =
  //       await _remoteDataSource.registerResponse(registerRequest);
  //
  //       if (response.status == ApiInternalStatus.success) {
  //         // _localDataSource.saveHomeToCache(response);
  //         return Right(
  //           response.toDomain(),
  //         );
  //       } else {
  //         return Left(
  //           Failure(
  //             code: ApiInternalStatus.failure,
  //             message: response.message ?? ResponseMessage.customDefault,
  //           ),
  //         );
  //       }
  //     } catch (error) {
  //       return Left(
  //         ErrorHandler
  //             .handle(error)
  //             .failure,
  //       );
  //     }
  //   } else {
  //     return Left(
  //       DataSource.noInternetConnection.getFailure(),
  //     );
  //   }
  // }

  // @override
  // Future<Either<Failure, String>> forgotPassword(String email) async {
  //   if (await _networkInfo.isConnected) {
  //     final ForgotPasswordResponse response =
  //     await _remoteDataSource.forgotPasswordResponse(email);
  //     print(response);
  //     try {
  //       if (response.status == ApiInternalStatus.success) {
  //         // _localDataSource.saveHomeToCache(response);
  //         return Right(
  //           response.toString(),
  //         );
  //       } else {
  //         return Left(
  //           Failure(
  //             code: ApiInternalStatus.failure,
  //             message: response.message ?? ResponseMessage.customDefault,
  //           ),
  //         );
  //       }
  //     } catch (error) {
  //       return Left(
  //         ErrorHandler
  //             .handle(error)
  //             .failure,
  //       );
  //     }
  //   } else {
  //     return Left(
  //       DataSource.noInternetConnection.getFailure(),
  //     );
  //   }
  // }

  @override
  Future<Either<Failure, String>> checkOtp(String otp) {
    // TODO: implement checkOtp
    throw UnimplementedError();
  }

//   @override
//   Future<Either<Failure, SendEmail>> sendEmail(String email)async {
//     if (await _networkInfo.isConnected) {
//       final SendEmailResponse response =
//           await _remoteDataSource.sendEmailResponse(email);
// ;
//       try {
//         if (response.detail =='Success Message') {
//           // _localDataSource.saveHomeToCache(response);
//           return Right(
//             response.toDomain(),
//           );
//         } else {
//           return Left(
//             Failure(
//               code: ApiInternalStatus.failure,
//               message: "This email does not exist",
//             ),
//           );
//         }
//       } catch (error) {
//         return Left(
//           ErrorHandler
//               .handle(error)
//               .failure,
//         );
//       }
//     } else {
//       return Left(
//         DataSource.noInternetConnection.getFailure(),
//       );
//     }
//   }

  @override
  Future<Either<Failure, String>> forgotPassword(String email) {
    // TODO: implement forgotPassword
    throw UnimplementedError();
  }

// @override
// Future<Either<Failure, String>> forgotPassword(String email) async {
//   if (await _networkInfo.isConnected) {
//     final ForgotPasswordResponse response =
//         await _remoteDataSource.forgotPasswordResponse(email);
//     try {
//       if (response.status == ApiInternalStatus.success) {
//         return Right(
//           response.toString(),
//         );
//       } else {
//         return Left(
//           Failure(
//             code: ApiInternalStatus.failure,
//             message: response.message ?? ResponseMessage.customDefault,
//           ),
//         );
//       }
//     } catch (error) {
//       return Left(
//         ErrorHandler.handle(error).failure,
//       );
//     }
//   } else {
//     return Left(
//       DataSource.noInternetConnection.getFailure(),
//     );
//   }
// }

// @override
// Future<Either<Failure, Home>> home() async {
//   try {
//     final response = await _localDataSource.homeResponse();
//     return Right(
//       response.toDomain(),
//     );
//   } catch (cacheError) {
//     if (await _networkInfo.isConnected) {
//       final HomeResponse response = await _remoteDataSource.homeResponse();
//       try {
//         if (response.status == ApiInternalStatus.success) {
//           _localDataSource.saveHomeToCache(response);
//           return Right(
//             response.toDomain(),
//           );
//         } else {
//           return Left(
//             Failure(
//               code: ApiInternalStatus.failure,
//               message: response.message ?? ResponseMessage.customDefault,
//             ),
//           );
//         }
//       } catch (error) {
//         return Left(
//           ErrorHandler.handle(error).failure,
//         );
//       }
//     } else {
//       return Left(
//         DataSource.noInternetConnection.getFailure(),
//       );
//     }
//   }
// }
//
// @override
// Future<Either<Failure, StoresDetails>> storeDetails() async {
//   try {
//     final response = await _localDataSource.storeDetailsResponse();
//     return Right(
//       response.toDomain(),
//     );
//   } catch (cacheError) {
//     print(cacheError);
//     if (await _networkInfo.isConnected) {
//       final StoresDetailsResponse response =
//           await _remoteDataSource.storeDetailsResponse();
//       try {
//         if (response.status == ApiInternalStatus.success) {
//           _localDataSource.saveStoreDetailsToCache(response);
//           return Right(
//             response.toDomain(),
//           );
//         } else {
//           return Left(
//             Failure(
//               code: ApiInternalStatus.failure,
//               message: response.message ?? ResponseMessage.customDefault,
//             ),
//           );
//         }
//       } catch (error) {
//         return Left(
//           ErrorHandler.handle(error).failure,
//         );
//       }
//     } else {
//       return Left(
//         DataSource.noInternetConnection.getFailure(),
//       );
//     }
//   }
// }
}
