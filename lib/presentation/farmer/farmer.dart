import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanta_app/presentation/common/reusable/custom_button.dart';
import 'package:tanta_app/presentation/common/reusable/custom_scaffold.dart';
import 'package:tanta_app/presentation/resources/routes_manager.dart';
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
              onPressed: () {
                Navigator.pushNamed(context, Routes.modifyFarmScreen);
              },
              text: AppStrings.editFarm,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: AppPadding.p20.h,
            ),
            child: customElevatedButtonWithoutStream(
              onPressed: () {
                Navigator.pushNamed(context, Routes.feedStates);
              },
              text: AppStrings.tracking,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: AppPadding.p20.h,
            ),
            child: customElevatedButtonWithoutStream(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return const CustomAlertDialog(); // Your custom dialog widget
                  },
                );
              },
              text: AppStrings.createOrder,
            ),
          ),
        ],
      ),
    );
  }
}

class CustomAlertDialog extends StatelessWidget {
  const CustomAlertDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            AppSize.s20.w,
          ),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: AppPadding.p10.h,
              ),
              child: customElevatedButtonWithoutStream(
                onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.pushNamed(context, Routes.feedForm);
                },
                text: AppStrings.order1,
                fontSize: 30,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: AppPadding.p10.h,
              ),
              child: customElevatedButtonWithoutStream(
                onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.pushNamed(context, Routes.feedForm);
                },
                text: AppStrings.order2,
                fontSize: 30,
              ),
            ),
          ],
        ),
        contentPadding: EdgeInsets.only(
          left: AppPadding.p20.w,
          right: AppPadding.p20.w,
          top: AppPadding.p22.h,
          bottom: 0,
        ),
        actions: [
          textButton(
            context: context,
            onPressed: () {
              Navigator.of(context).pop();
            },
            text: AppStrings.close,
          ),
        ],
      ),
    );
  }
}