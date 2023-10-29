
import 'package:flutter/material.dart';

Widget customScaffold({
  required Widget body,
}) {
  return Directionality(
    textDirection: TextDirection.rtl,
    child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: body,
      ),
  );
}
