import 'dart:async';
import 'package:flutter/material.dart';
import 'package:tanta_app/app/app_prefs.dart';
import 'package:tanta_app/app/di.dart';
import 'package:tanta_app/presentation/common/reusable/custom_scaffold.dart';
import 'package:tanta_app/presentation/feed_form/feed_form.dart';
import 'package:tanta_app/presentation/resources/assets_manager.dart';
import 'package:tanta_app/presentation/resources/constant.dart';
import 'package:tanta_app/presentation/resources/routes_manager.dart';


class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  final AppPreferences _appPreferences = instance<AppPreferences>();
  Timer? _timer;

  _startTimer() {
    _timer = Timer(
      const Duration(
        seconds: AppConstant.timer,
      ),
      () {
        Navigator.pushReplacementNamed(context,Routes.helloScreen);
      },
    );
  }

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  void dispose() {
    super.dispose();
    _timer!.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return customScaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(50),
          child: Column(
            children: [
              Expanded(
                child: Image.asset(
                  ImageAssets.splash2,
                  // height: 180.h,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
