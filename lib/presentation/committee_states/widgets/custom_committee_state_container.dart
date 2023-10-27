import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanta_app/presentation/committee_states/widgets/committee_state_element.dart';
import 'package:tanta_app/presentation/common/freezed/freezed.dart';
import 'package:tanta_app/presentation/resources/color_manager.dart';

class CustomcommitteesStateContainer extends StatelessWidget {
   const CustomcommitteesStateContainer({super.key, required this.committee});
    final Committee committee;
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
              committeesContainerElement(
                text1: ' : رقم الطلب',
                text2: committee.committeeNumber.toString(),
              ),
              committeesContainerElement(
                text1: ' : تاريخ الطلب',
                text2: committee.date.toString(),
              ),
             const committeesContainerElement(
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
