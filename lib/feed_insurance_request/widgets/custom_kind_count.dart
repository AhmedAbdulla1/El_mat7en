import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanta_app/feed_insurance_request/widgets/custom_gender_count.dart';
import 'package:tanta_app/presentation/resources/font_manager.dart';

class CustomKindCount extends StatelessWidget {
  const CustomKindCount({
    super.key,
    required this.title, required this.male, required this.female,
  });
  final String title;
  final TextEditingController male, female;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 20.0.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        textDirection: TextDirection.rtl,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: FontSize.s32, color: Colors.black),
          ),
          SizedBox(
            height: 21.h,
          ),
          CustomGenderCount(
            genderController: male,
            gender: 'ذكر',
          ),
          CustomGenderCount(
            genderController: female,
            gender: 'أنثى',
          ),
        ],
      ),
    );
  }
}

