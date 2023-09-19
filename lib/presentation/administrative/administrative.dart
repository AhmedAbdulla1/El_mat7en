import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanta_app/presentation/common/reusable/custom_scaffold.dart';
import 'package:tanta_app/presentation/feed_form/widgets/custom_text_form_filed.dart';
import 'package:tanta_app/presentation/feed_states/widgets/custom_app_bar.dart';
import 'package:tanta_app/presentation/resources/color_manager.dart';
import 'package:tanta_app/presentation/resources/font_manager.dart';

class Administrative extends StatefulWidget {
  const Administrative({super.key});

  @override
  State<Administrative> createState() => _AdministrativeState();
}

class _AdministrativeState extends State<Administrative> {
  TextEditingController village = TextEditingController(),
      center = TextEditingController(),
      government = TextEditingController();

  @override
  void dispose() {
    village.dispose();
    center.dispose();
    government.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return customScaffold(
        body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CustomAppBar(title: 'الرقابه'),
          SizedBox(
            width: double.infinity,
            height: 50.h,
          ),
          Row(
            children: [
              const CustomDataShowContainer(title: 'عدد المزارعين'),
              SizedBox(
                width: 50.w,
              ),
              const CustomDataShowContainer(title: '20 '),
            ],
          ),
          SizedBox(
            height: 50.w,
          ),
          Row(
            children: [
              const CustomDataShowContainer(title: 'عدد الماشيه'),
              SizedBox(
                width: 50.w,
              ),
              const CustomDataShowContainer(title: '200 '),
            ],
          ),
          SizedBox(
            height: 50.w,
          ),
          Row(
            textDirection: TextDirection.rtl,
            children: [
              SizedBox(
                height: 100.h,
                width: 110.w,
                child: CustomTextFormFiled(
                    hintText: 'قرية', textEditingController: village),
              ),
              SizedBox(
                width: 10.w,
              ),
              SizedBox(
                height: 100.h,
                width: 110.w,
                child: CustomTextFormFiled(
                    hintText: 'مركز', textEditingController: center),
              ),
              SizedBox(
                width: 10.w,
              ),
              SizedBox(
                height: 100.h,
                width: 110.w,
                child: CustomTextFormFiled(
                    hintText: 'محافظة', textEditingController: government),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}

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
