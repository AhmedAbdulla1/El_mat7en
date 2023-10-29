
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tanta_app/app/app_prefs.dart';
import 'package:tanta_app/data/data_source/local_data_source.dart';
import 'package:tanta_app/data/data_source/remote_data_source.dart';
import 'package:tanta_app/data/network/app_api.dart';
import 'package:tanta_app/data/network/dio_factory.dart';
import 'package:tanta_app/data/network/network_info.dart';
import 'package:tanta_app/data/repository/repository_impl.dart';
import 'package:tanta_app/domain/repository/repository.dart';
import 'package:tanta_app/domain/usecase/login_usecase.dart';
import 'package:tanta_app/presentation/login_screen/view_model/login_view_model.dart';

final instance = GetIt.instance;

Future<void> initAppModule() async {
  final shardPref = await SharedPreferences.getInstance();
  // instance for shared pref
  instance.registerLazySingleton(() => shardPref);
  // instant for AppPreferences
  instance.registerLazySingleton(
    () => AppPreferences(
      instance<SharedPreferences>(),
    ),
  );

  // instant for network info
  instance.registerLazySingleton<NetWorkInfo>(
    () => NetworkInfoImpl(
      InternetConnectionChecker(),
    ),
  );

  // instant for dioFactory
  instance.registerLazySingleton<DioFactory>(
    () => DioFactory(
      instance<AppPreferences>(),
    ),
  );

  //instant for AppServicesClient
  Dio dio = await instance<DioFactory>().getDio();
  instance.registerLazySingleton<AppServicesClient>(
    () => AppServicesClient(
      dio,
    ),
  );
//
  // instant for remoteDataSource
  instance.registerLazySingleton<RemoteDataSource>(
    () => RemoteDataSourceImpl(
      instance<AppServicesClient>(),
    ),
  );
  // instance for local data source
  // instance.registerLazySingleton<LocalDataSource>(
  //   () => LocalDataSourceImpl(),
  // );
//   //instant for repository

  instance.registerLazySingleton<Repository>(
    () => RepositoryImpl(
      // instance<LocalDataSource>(),
      instance<RemoteDataSource>(),
      instance<NetWorkInfo>(),
    ),
  );
}
initSplashModule(){}
//
initLoginModule() {
  if (!GetIt.I.isRegistered<LoginViewModel>()) {
    instance.registerFactory<LoginUseCase>(
      () => LoginUseCase(
        instance<Repository>(),
      ),
    );
    instance.registerFactory<LoginViewModel>(
      () => LoginViewModel(
          instance<LoginUseCase>(),
      ),
    );
  }
}
//
// //
// initRegisterModule() {
//   if (!GetIt.I.isRegistered<RegisterUseCase>()) {
//     instance.registerFactory<RegisterUseCase>(
//       () => RegisterUseCase(
//         instance<Repository>(),
//       ),
//     );
//     instance.registerFactory<SignUpViewModel>(
//       () => SignUpViewModel(
//         instance<RegisterUseCase>(),
//       ),
//     );
//   }
// }
//
// initRecoverPasswordModule() {
//   if (!GetIt.I.isRegistered<RecoverPasswordUseCase>()) {
//     instance.registerFactory<RecoverPasswordUseCase>(
//       () => RecoverPasswordUseCase(
//         instance<Repository>(),
//       ),
//     );
//     instance.registerFactory<RecoverPasswordViewModel>(
//       () => RecoverPasswordViewModel(
//         instance<RecoverPasswordUseCase>(),
//       ),
//     );
//   }
// }
//
// initVerifyCodeModule() {
//   if (!GetIt.I.isRegistered<VerifyCodeUseCase>()) {
//     instance.registerFactory<VerifyCodeUseCase>(
//       () => VerifyCodeUseCase(
//         instance<Repository>(),
//       ),
//     );
//     instance.registerFactory<VerifyCodeViewModel>(
//       () => VerifyCodeViewModel(
//         instance<VerifyCodeUseCase>(),
//       ),
//     );
//   }
// }
//
// // initChangePasswordModule() {
// //   if (!GetIt.I.isRegistered<ChangePasswordUseCase>()) {
// //     instance.registerFactory<ChangePasswordUseCase>(
// //       () => ChangePasswordUseCase(
// //         instance<Repository>(),
// //       ),
// //     );
// //     instance.registerFactory<ChangePasswordViewModel>(
// //       () => ChangePasswordViewModel(
// //         instance<ChangePasswordUseCase>(),
// //       ),
// //     );
// //   }
// // }
// initMainModule() {
//   if (!GetIt.I.isRegistered<MainViewModel>()) {
//     instance.registerFactory<MainViewModel>(() => MainViewModel(instance<NetWorkInfo>()));
//   }
//   if (!GetIt.I.isRegistered<DashboardUseCase>()) {
//     instance.registerFactory<DashboardUseCase>(
//       () => DashboardUseCase(
//         instance<Repository>(),
//       ),
//     );
//   }
//   if (!GetIt.I.isRegistered<ProfileViewModel>()) {
//     instance.registerFactory<ProfileViewModel>(
//       () => ProfileViewModel(
//         instance<DashboardUseCase>(),
//       ),
//     );
//   }
//   if(!GetIt.I.isRegistered<DashboardViewModel>()){
//     instance.registerFactory<DashboardViewModel>(
//       () => DashboardViewModel(
//         instance<DashboardUseCase>(),
//       ),
//     );
//   }
// }
//
// initProfileDetailsModule() {
//   if (!GetIt.I.isRegistered<UpdateProfileUseCase>()) {
//     instance.registerFactory<UpdateProfileUseCase>(
//       () => UpdateProfileUseCase(
//         instance<Repository>(),
//       ),
//     );
//     instance.registerFactory<ProfileDetailsViewModel>(
//       () => ProfileDetailsViewModel(
//         instance<UpdateProfileUseCase>(),
//         instance<DashboardUseCase>(),
//       ),
//     );
//   }
// }
// initHomeModule() {
//   if (!GetIt.I.isRegistered<HomeUseCase>()) {
//     instance.registerFactory<HomeUseCase>(
//         () => HomeUseCase(instance<Repository>()));
//     instance.registerFactory<HomeViewModel>(
//         () => HomeViewModel(instance<HomeUseCase>()));
//   }
// }

// initHomeModule() {
//   if (!GetIt.I.isRegistered<HomeUseCase>()) {
//     instance.registerFactory<HomeUseCase>(
//         () => HomeUseCase(instance<Repository>()));
//     instance.registerFactory<HomeViewModel>(
//         () => HomeViewModel(instance<HomeUseCase>()));
//   }
// }
//
// initSearchModule() {
//   if (!GetIt.I.isRegistered<SearchUseCase>()) {
//     instance.registerFactory<SearchUseCase>(
//         () => SearchUseCase(instance<Repository>()));
//     instance.registerFactory<SearchViewModel>(() => SearchViewModel());
//   }
// }
