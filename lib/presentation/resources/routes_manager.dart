import 'package:flutter/material.dart';
import 'package:tanta_app/app/di.dart';
import 'package:tanta_app/presentation/administrative/administrative.dart';
import 'package:tanta_app/presentation/farm_modification_screen/modify_farm_screen.dart';
import 'package:tanta_app/presentation/feed_form/feed_form.dart';
import 'package:tanta_app/presentation/feed_states/feed_states.dart';
import 'package:tanta_app/presentation/hello_screen/hello_view.dart';
import 'package:tanta_app/presentation/login_screen/view/login_view.dart';
import 'package:tanta_app/presentation/farmer/main_view.dart';
import 'package:tanta_app/presentation/resources/string_manager.dart';
import 'package:tanta_app/presentation/splash_screen/splash_view.dart';

import 'package:tanta_app/presentation/veterinary_screen/veterinary.dart';


class Routes {
  static const String splashScreen = "/";
  static const String helloScreen = "/hello";
  static const String loginScreen = "/login";
  static const String farmerScreen = '/farmer';
  static const String feedForm = '/feedForm';
  static const String feedStates = '/feedStates';
  static const String modifyFarmScreen = '/modifyFarmScreen';
  static const String veterinaryScreen = '/veterinaryScreen';
  static const String adminScreen = '/adminScreen';


  static const String recoverPasswordScreen = "/recoverPassword";
  static const String verifyCodeScreen = "/verifyCodeScreen";
  static const String changePasswordScreen = "/changePasswordScreen";
  static const String mainScreen = "/farmer";
  static const String searchScreen = '/searchScreen';
  static const String profileDetailsScreen = "/profileDetails";
  static const String settingScreen = "/setting";
  static const String wifiSetupScreen = "/wifiSetup";
  static const String exercisesScreen = "/exercises";
  static const String inTrainingScreen = '/inTraining';
}

//
class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case Routes.helloScreen:
        return MaterialPageRoute(
          builder: (_) {
            return const HelloView();
          },
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) {
            initLoginModule();
            return const LoginView();
          },
        );
      case Routes.farmerScreen:
        return MaterialPageRoute(
          builder: (_) {
            return const FarmerScreen();
          },
        );
      // case Routes.recoverPasswordScreen:
      //   return MaterialPageRoute(
      //     builder: (_) {
      //       initRecoverPasswordModule();
      //       return const RecoverPasswordView();
      //     },
      //   );
      // case Routes.verifyCodeScreen:
      //   return MaterialPageRoute(
      //     builder: (_) {
      //       initVerifyCodeModule();
      //       return const VerifyCodeView();
      //     },
      //   );

      // // case Routes.changePasswordScreen:
      // //   return MaterialPageRoute(
      // //     builder: (_) {
      // //       initChangePasswordModule();
      // //       return const ChangePasswordView();
      // //     },
      // //   );
      // case Routes.mainScreen:
      //   return MaterialPageRoute(builder: (_) {
      //     initMainModule();
      //     return const MainView();
      //   });
      case Routes.feedForm:
        return MaterialPageRoute(builder: (_) {
          // initProfileDetailsModule();
          return const FeedForm();
        });
      case Routes.feedStates:
        return MaterialPageRoute(builder: (_) {
          return const FeedStates();
        });
      case Routes.modifyFarmScreen:
        return MaterialPageRoute(
          builder: (_) => const ModifyFarmScreen(),
        );
      case Routes.veterinaryScreen:
        return MaterialPageRoute(
          builder: (_) => const VeterinaryScreen(),
        );
      case Routes.adminScreen:
        return MaterialPageRoute(
          builder: (_) => const Administrative(),
        );
      // case Routes.settingScreen:
      //   return MaterialPageRoute(builder: (_) => const SettingView());
      // case Routes.storeDetailsScreen:
      //   return MaterialPageRoute(builder: (_) => const StoreDetailsView());
      default:
        return unDefinedRoute();
    }
  }

  static Route unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text(
            AppStrings.noRouteFound,
          ),
        ),
        body: const Center(
          child: Text(AppStrings.noRouteFound),
        ),
      ),
    );
  }
}