import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanta_app/presentation/feed_form/widgets/custom_text_form_filed.dart';
import 'package:tanta_app/presentation/resources/font_manager.dart';

class CustomGenderCount extends StatelessWidget {
  const CustomGenderCount({
    super.key,
    required this.gender,
    required this.genderController, this.fontSize,
  });
  final String gender;
  final TextEditingController genderController;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return Row(
      textDirection: TextDirection.rtl,
      children: [
        SizedBox(
          width: 46.w,
        ),
        Text(
          gender,
          style: TextStyle(
            color: Colors.grey,
            fontSize:fontSize?? FontSize.s22,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          width: 170.w,
        ),
        SizedBox(
          width: 73.w,
          height: 60.h,
          child: CustomTextFormFiled(
            hintText: '0',
            textEditingController: genderController,
          ),
        ),
      ],
    );
  }
}
