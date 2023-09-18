import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanta_app/presentation/resources/color_manager.dart';
import 'package:tanta_app/presentation/resources/font_manager.dart';

class CustomDataShowContainer extends StatelessWidget {
  const CustomDataShowContainer({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        constraints: BoxConstraints(minWidth: 50.w),
        alignment: Alignment.center,
        // width: 170.w,
        height: 55.h,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(50.r),
          border: Border.all(
            color: ColorManager.primary,
            width: 4,
          ),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: const Color(0xff7D7D7D),
            fontSize: FontSize.s22,
          ),
        ),
      ),
    );
  }
}
