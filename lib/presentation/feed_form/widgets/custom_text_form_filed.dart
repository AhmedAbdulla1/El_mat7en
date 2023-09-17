import 'package:flutter/material.dart';
import 'package:tanta_app/presentation/resources/font_manager.dart';

class CustomTextFormFiled extends StatelessWidget {
  const CustomTextFormFiled({super.key, required this.hintText});
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 10),
      child: TextFormField(
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: FontSize.s18,
            color: const Color(0xff7D7D7D),
          ),
        ),
      ),
    );
  }
}
