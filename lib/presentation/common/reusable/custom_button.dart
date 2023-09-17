import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tanta_app/presentation/resources/color_manager.dart';
import 'package:tanta_app/presentation/resources/values_manager.dart';

Widget customElevatedButton({
  required Stream<bool> stream,
  required VoidCallback onPressed,
  required String text,
}) {
  return StreamBuilder<bool>(
    stream: stream,
    builder: (context, snapshot) => SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: (snapshot.data ?? false) ? onPressed : null,
        child: Text(
          text,
        ),
      ),
    ),
  );
}

Widget customElevatedButtonWithoutStream({
  required VoidCallback onPressed,
  required String text,
}) {
  return SizedBox(
    width: double.infinity,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppPadding.p30),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          text,
        ),
      ),
    ),
  );
}

Widget textButton({
  required context,
  required VoidCallback onPressed,
  required String text,
}) {
  return TextButton(
    onPressed: onPressed,
    child: Text(
      text,
      style: Theme.of(context).textTheme.bodyLarge,
      textAlign: TextAlign.end,
    ),
  );
}
