import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanta_app/presentation/resources/color_manager.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      textDirection: TextDirection.rtl,
      children: [
        SizedBox(
          width: 10.w,
        ),
        Container(
          width: 14.w,
          height: 14.h,
          decoration: BoxDecoration(
            color: ColorManager.primary,
            borderRadius: BorderRadius.circular(50.r),
          ),
        ),
        SizedBox(
          width: 10.w,
        ),
        Text(
          title,
          style: TextStyle(
              fontSize: 30.sp,
              // fontSize: FontSize.s30,
              color: ColorManager.primary,
              fontWeight: FontWeight.bold),
        ),
        const Expanded(child: SizedBox()),
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_forward,
            size: 30.sp,
          ),
        ),
      ],
    );
  }
}
