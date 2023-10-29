import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanta_app/presentation/common/freezed/freezed.dart';
import 'package:tanta_app/presentation/request_states/widgets/request_state_element.dart';
import 'package:tanta_app/presentation/resources/color_manager.dart';

class CustomRequestsStateContainer extends StatelessWidget {
   const CustomRequestsStateContainer({super.key, required this.request});
    final InsuranceRequest request;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Align(
        child: Container(
          width: 281.w,
          height: 125.h,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(24.r),
            border: Border.all(
              color: ColorManager.primary,
              width: 2,
            ),
          ),
          child:  Column(
            textDirection: TextDirection.rtl,
            children: [
              RequestsContainerElement(
                text1: ' : رقم الطلب',
                text2: request.requestNumber.toString(),
              ),
              RequestsContainerElement(
                text1: ' : تاريخ الطلب',
                text2: request.date.toString(),
              ),
             const RequestsContainerElement(
                text1: ' : حالة الطلب',
                text2: 'قيد الانتظار',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
