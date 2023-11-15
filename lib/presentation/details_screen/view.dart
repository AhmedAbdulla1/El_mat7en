import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanta_app/presentation/common/reusable/custom_button.dart';
import 'package:tanta_app/presentation/common/reusable/custom_text_form_field.dart';
import 'package:tanta_app/presentation/details_screen/view_model.dart';
import 'package:tanta_app/presentation/resources/font_manager.dart';
import 'package:tanta_app/presentation/resources/values_manager.dart';

import '../request_states/widgets/request_state_element.dart';

class ApplyDetails extends StatefulWidget {
  const ApplyDetails({Key? key}) : super(key: key);

  @override
  State<ApplyDetails> createState() => _ApplyDetailsState();
}

class _ApplyDetailsState extends State<ApplyDetails> {
  final TextEditingController _notesTextController = TextEditingController();
  final DetailsViewModel _viewModel = DetailsViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'تفاصيل الطلب',
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: AppSize.s28.w,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          children: [
            Expanded(
              child: ListView(
                padding: EdgeInsets.all(AppPadding.p16.w),
                children:const  [
                  RequestsContainerElement(
                    text1:'اسم المزرعه :',
                    text2:'..............',
                  ),
                  RequestsContainerElement(
                    text1:'العنوان:',
                    text2:'................',
                  ),
                  RequestsContainerElement(
                    text1:'رقم اللجنه :',
                    text2:'2',
                  ),
                  RequestsContainerElement(
                    text1:'رقم الطلب :',
                    text2:'5',
                  ),
                  RequestsContainerElement(
                    text1:'تاريخ التقديم :',
                    text2:'30/10/2023',
                  ),
                  RequestsContainerElement(
                    text1:'حاله الطلب :',
                    text2:'قيد الانتظار',
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppPadding.p16),
              child: customTextFormField(
                  stream: _viewModel.noteOutput,
                  textEditingController: _notesTextController,
                  hintText: "الملاحظات",),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: AppPadding.p16),
              child: Row(
                children: [
                  Expanded(
                      child: customElevatedButtonWithoutStream(
                          onPressed: () {}, text: 'رفض', fontSize: FontSize.s25)),
                  Expanded(
                      child: customElevatedButtonWithoutStream(
                          onPressed: () {},
                          text: 'موافقة',
                          fontSize: FontSize.s25)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}
