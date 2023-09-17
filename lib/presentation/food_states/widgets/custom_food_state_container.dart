import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanta_app/presentation/food_states/widgets/food_state_element.dart';
import 'package:tanta_app/presentation/resources/color_manager.dart';

class CustomFoodStateContainer extends StatelessWidget {
  const CustomFoodStateContainer({super.key});

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
          child: const Column(
            children: [
              FoodContainerElement(
                text1: ' : اسم الطلب',
                text2: 'علف',
              ),
              FoodContainerElement(
                text1: ' : تاريخ الطلب',
                text2: '2021/10/10',
              ),
              FoodContainerElement(
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