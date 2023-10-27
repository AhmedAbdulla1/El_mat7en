import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanta_app/presentation/resources/font_manager.dart';
import 'package:tanta_app/presentation/resources/values_manager.dart';

class CustomTextFormFiled extends StatelessWidget {
  CustomTextFormFiled(
      {super.key,
      required this.hintText,
      this.onTap,
      this.type ,
      required this.textEditingController});

  final String hintText;
  final TextEditingController textEditingController;
  final TextInputType? type;
  final VoidCallback? onTap;
  final FocusNode focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        // horizontal: AppPadding.p30.w,
        vertical: 10.h,
      ),
      child: TextFormField(
        textDirection: TextDirection.rtl,
        controller: textEditingController,
        keyboardType: type,
        textAlign: TextAlign.center,
        onTap: () {
          // Call onTap if provided
          onTap?.call();

          // Prevent the keyboard from showing when onTap is provided
          if (onTap != null) {
            FocusScope.of(context).requestFocus(FocusNode());
          }
        },
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: FontSize.s18,
            color: const Color(0xff7D7D7D),
          ),
          contentPadding: EdgeInsets.only(left: 30.w),
        ),
      ),
    );
  }
}
