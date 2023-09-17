import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tanta_app/presentation/common/reusable/custom_button.dart';
import 'package:tanta_app/presentation/common/reusable/custom_scaffold.dart';
import 'package:tanta_app/presentation/resources/routes_manager.dart';
import 'package:tanta_app/presentation/resources/string_manager.dart';
import 'package:tanta_app/presentation/resources/values_manager.dart';

class HelloView extends StatefulWidget {
  const HelloView({Key? key}) : super(key: key);

  @override
  State<HelloView> createState() => _HelloViewState();
}

class _HelloViewState extends State<HelloView> {
  @override
  Widget build(BuildContext context) {
    return customScaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            AppStrings.helloTitle,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: customElevatedButtonWithoutStream(
              onPressed: () {
                Navigator.pushReplacementNamed(context, Routes.loginScreen);
              },
              text: AppStrings.enter,
            ),
          ),
        ],
      ),
    );
  }
}
