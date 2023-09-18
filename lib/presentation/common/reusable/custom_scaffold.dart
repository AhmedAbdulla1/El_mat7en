import 'package:tanta_app/presentation/resources/assets_manager.dart';
import 'package:flutter/material.dart';

Widget customScaffold({
  required Widget body,
}) {
  return Directionality(
    textDirection: TextDirection.rtl,
    child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(ImageAssets.backgroundImage,),
            opacity: 0.2,
            fit: BoxFit.fill,
          ),
        ),
        child: body,
      ),
    ),
  );
}
