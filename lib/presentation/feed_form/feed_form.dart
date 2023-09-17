import 'package:flutter/material.dart';
import 'package:tanta_app/presentation/common/reusable/custom_button.dart';
import 'package:tanta_app/presentation/common/reusable/custom_scaffold.dart';
import 'package:tanta_app/presentation/feed_form/widgets/custom_text_form_filed.dart';
import 'package:tanta_app/presentation/feed_states/widgets/custom_app_bar.dart';

class FeedForm extends StatefulWidget {
  const FeedForm({super.key});

  @override
  State<FeedForm> createState() => _FeedFormState();
}

class _FeedFormState extends State<FeedForm> {
  @override
  Widget build(BuildContext context) {
    return customScaffold(
        body: SafeArea(
            child: Column(
      children: [
        const CustomAppBar(
          title: 'تقديم الطلب',
        ),
        const CustomTextFormFiled(hintText: 'الاسم'),
        const CustomTextFormFiled(hintText: 'الرقم القومى'),
        // TODO dropdown menu
        const CustomTextFormFiled(hintText: 'رقم التليفون'),
        customElevatedButtonWithoutStream(onPressed: () {}, text: 'طلب')
      ],
    )));
  }
}

