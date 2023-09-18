import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanta_app/presentation/resources/font_manager.dart';

class CustomTextFormFiled extends StatelessWidget {
  const CustomTextFormFiled({super.key, required this.hintText, required this.textEditingController});
  final String hintText;
  final TextEditingController textEditingController;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: TextFormField(
        controller:textEditingController ,
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
