import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanta_app/feed_insurance_request/widgets/custom_kind_count.dart';
import 'package:tanta_app/presentation/common/reusable/custom_button.dart';
import 'package:tanta_app/presentation/feed_form/widgets/custom_text_form_filed.dart';
import 'package:tanta_app/presentation/feed_states/widgets/custom_app_bar.dart';

class FeedInsuranceRequest extends StatefulWidget {
  const FeedInsuranceRequest({super.key});

  @override
  State<FeedInsuranceRequest> createState() => _FeedInsuranceRequestState();
}

class _FeedInsuranceRequestState extends State<FeedInsuranceRequest> {
  final TextEditingController maleCowController = TextEditingController();
  final TextEditingController femaleCowController = TextEditingController();
  final TextEditingController maleBuffaloController = TextEditingController();
  final TextEditingController femaleBuffaloController = TextEditingController();
  final TextEditingController maleGoatController = TextEditingController();
  final TextEditingController femaleGoatController = TextEditingController();
  final TextEditingController maleCamelController = TextEditingController();
  final TextEditingController femaleCamelController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  @override
  void dispose() {
    maleCowController.dispose();
    femaleCowController.dispose();
    maleBuffaloController.dispose();
    femaleBuffaloController.dispose();
    maleGoatController.dispose();
    femaleGoatController.dispose();
    maleCamelController.dispose();
    femaleCamelController.dispose();
    addressController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const CustomAppBar(title: 'طلب تأمين'),
          const Divider(
            color: Colors.black,
            thickness: 2,
          ),
          CustomKindCount(
            title: 'جاموس',
            male: maleBuffaloController,
            female: femaleBuffaloController,
          ),
          CustomKindCount(
            title: 'بقر',
            male: maleCowController,
            female: femaleCowController,
          ),
          CustomKindCount(
            title: 'ماعز',
            male: maleGoatController,
            female: femaleGoatController,
          ),
          CustomKindCount(
            title: 'جمل',
            male: maleCamelController,
            female: femaleCamelController,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: CustomTextFormFiled(
              hintText: 'العنوان',
              textEditingController: addressController,
            ),
          ),
          customElevatedButtonWithoutStream(
            onPressed: () {},
            text: 'تقديم طلب',
          ),
          SizedBox(
            height: 76.h,
          ),
        ],
      ),
    );
  }
}
