import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanta_app/presentation/common/reusable/custom_button.dart';
import 'package:tanta_app/presentation/common/reusable/custom_scaffold.dart';
import 'package:tanta_app/presentation/resources/string_manager.dart';
import 'package:tanta_app/presentation/resources/values_manager.dart';

class FarmerScreen extends StatefulWidget {
  const FarmerScreen({Key? key}) : super(key: key);

  @override
  State<FarmerScreen> createState() => _FarmerScreenState();
}

class _FarmerScreenState extends State<FarmerScreen> {
  @override
  Widget build(BuildContext context) {
    return customScaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            AppStrings.farmer,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: AppPadding.p20.h,
            ),
            child: customElevatedButtonWithoutStream(
              onPressed: () {},
              text: AppStrings.editData,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: AppPadding.p20.h,
            ),
            child: customElevatedButtonWithoutStream(
              onPressed: () {},
              text: AppStrings.editFarm,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: AppPadding.p20.h,
            ),
            child: customElevatedButtonWithoutStream(
              onPressed: () {},
              text: AppStrings.tracking,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: AppPadding.p20.h,
            ),
            child: customElevatedButtonWithoutStream(
              onPressed: () {},
              text: AppStrings.createOrder,
            ),
          ),
        ],
      ),
    );
  }
}
