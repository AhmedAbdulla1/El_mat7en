import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanta_app/presentation/common/reusable/custom_button.dart';
import 'package:tanta_app/presentation/common/reusable/custom_scaffold.dart';
import 'package:tanta_app/presentation/feed_form/widgets/custom_text_form_filed.dart';
import 'package:tanta_app/presentation/feed_states/widgets/custom_app_bar.dart';
import 'package:tanta_app/presentation/resources/string_manager.dart';
import 'package:tanta_app/presentation/resources/values_manager.dart';

class FeedForm extends StatefulWidget {
  const FeedForm({super.key});

  @override
  State<FeedForm> createState() => _FeedFormState();
}

class _FeedFormState extends State<FeedForm> {
  TextEditingController name = TextEditingController(),
      nationalId = TextEditingController(),
      village = TextEditingController(),
      center = TextEditingController(),
      government = TextEditingController(),
      phone = TextEditingController();

  @override
  void dispose() {
    name.dispose();
    nationalId.dispose();
    village.dispose();
    center.dispose();
    government.dispose();
    phone.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return customScaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: ListView(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: AppPadding.p30.h,
                  bottom: AppPadding.p70.h,
                ),
                child: const CustomAppBar(
                  title: AppStrings.createOrder,
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              CustomTextFormFiled(
                  hintText: 'الاسم', textEditingController: name),
              SizedBox(
                height: 20.h,
              ),
              CustomTextFormFiled(
                  hintText: 'الرقم القومى', textEditingController: nationalId),
              SizedBox(
                height: 20.h,
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
              SizedBox(
                height: 20.h,
              ),
              CustomTextFormFiled(
                  hintText: 'رقم التليفون', textEditingController: phone),
              SizedBox(
                height: 70.h,
              ),
              customElevatedButtonWithoutStream(onPressed: () {}, text: 'طلب'),
              SizedBox(
                height: 20.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// class CustomDropDownMaun extends StatefulWidget {
//   const CustomDropDownMaun({super.key});

//   @override
//   State<CustomDropDownMaun> createState() => _CustomDropDownMaunState();
// }

// class _CustomDropDownMaunState extends State<CustomDropDownMaun> {
//    List<String> items = ['Item 1', 'Item 2', 'Item 3', 'Item 4'];
//   String selectedItem = 'Item 1';
//   @override
//   Widget build(BuildContext context) {
//     return
//         Padding(
//           padding: EdgeInsets.symmetric(horizontal: 36.w, vertical: 10.h),
//           child: Container(
//             alignment: Alignment.center,
//             height: 60,
//             width: double.infinity,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(50.r),
//               border: Border.all(
//                 color: ColorManager.primary,
//                 width: 3,
//               ),
//             ),
//             child: DropdownButton<String>(
//               value: selectedItem,
//               onChanged: (String? newValue) {
//                 // Update the parameter type to String?
//                 setState(() {
//                   selectedItem = newValue ??
//                       items[
//                           0]; // Use the null-aware operator to handle null values
//                 });
//               },
//               items: items.map<DropdownMenuItem<String>>((String value) {
//                 return DropdownMenuItem<String>(
//                   value: value,
//                   child: Text(value),
//                 );
//               }).toList(),
//             ),
//           ),
//         );
//   }
// }
