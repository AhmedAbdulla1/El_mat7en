import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanta_app/presentation/feed_form/widgets/custom_text_form_filed.dart';
import 'package:tanta_app/presentation/resources/font_manager.dart';
import 'package:tanta_app/presentation/common/reusable/custom_button.dart';

class CustomGenderCount extends StatefulWidget {
  const CustomGenderCount({
    super.key,
    required this.gender,
    required this.genderController,
    this.fontSize,
  });
  final String gender;
  final TextEditingController genderController;
  final double? fontSize;
  @override
  State<CustomGenderCount> createState() => _CustomGenderCountState();
}

class _CustomGenderCountState extends State<CustomGenderCount> {
  GlobalKey<FormState> globalKey = GlobalKey();
  TextEditingController animalID = TextEditingController();
  @override
  void initState() {
    // widget.genderController.text = '0';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      textDirection: TextDirection.rtl,
      children: [
        SizedBox(
          width: 45.w,
        ),
        Text(
          widget.gender,
          style: TextStyle(
            color: Colors.grey,
            fontSize: widget.fontSize ?? FontSize.s22,
            fontWeight: FontWeight.w500,
          ),
        ),
        
        Spacer(),
        SizedBox(
          width: 73.w,
          height: 60.h,
          child: CustomTextFormFiled(
            readOnly: true,
            hintText: '0',
            textEditingController: widget.genderController,
          ),
        ),
        SizedBox(
          width: 34.w,
        ),
      
      ],
    );
  }

  Future<dynamic> showDialog(
    BuildContext context,
  ) {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context)
                  .viewInsets
                  .bottom, // Handle keyboard overlap
            ),
            child: Form(
              key: globalKey,
              child: SizedBox(
                height: 245.h,
                child: Column(
                  children: [
                    SizedBox(
                      height: 30.h,
                    ),
                    CustomTextFormFiled(
                      hintText: 'رقم الدبله',
                      textEditingController: animalID,
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    customElevatedButtonWithoutStream(
                      onPressed: () {
                        if (globalKey.currentState!.validate()) {
                          widget.genderController.text =
                              (int.parse(widget.genderController.text) + 1)
                                  .toString();
                          animalID.clear();
                          Navigator.pop(context);
                        }
                      },
                      text: 'إضافه',
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}