import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanta_app/presentation/common/reusable/custom_button.dart';
import 'package:tanta_app/presentation/common/reusable/custom_scaffold.dart';
import 'package:tanta_app/presentation/feed_form/widgets/custom_text_form_filed.dart';
import 'package:tanta_app/presentation/feed_states/widgets/custom_app_bar.dart';
class FeedForm extends StatelessWidget {
  const FeedForm({super.key});

  @override
  Widget build(BuildContext context) {
    return customScaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const CustomAppBar(
              title: 'تقديم الطلب',
            ),
              CustomTextFormFiled(hintText: 'الاسم'),
              CustomTextFormFiled(hintText: 'الرقم القومى'),
              CustomTextFormFiled(hintText: 'العنوان'),
              CustomTextFormFiled(hintText: 'رقم التليفون'),
            customElevatedButtonWithoutStream(onPressed: () {}, text: 'طلب'),
            SizedBox(
              height: 20.h,
            ),
          ],
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

