import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanta_app/presentation/administrative/widgets/custom_data_show_container.dart';
import 'package:tanta_app/presentation/common/reusable/custom_scaffold.dart';
import 'package:tanta_app/presentation/feed_form/widgets/custom_text_form_filed.dart';
import 'package:tanta_app/presentation/feed_states/widgets/custom_app_bar.dart';


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

