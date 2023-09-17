import 'package:flutter/material.dart';
import 'package:tanta_app/presentation/common/reusable/custom_scaffold.dart';
import 'package:tanta_app/presentation/food_states/widgets/custom_food_state_container.dart';

class FoodStates extends StatelessWidget {
  const FoodStates({super.key});

  @override
  Widget build(BuildContext context) {
    return customScaffold(body: ListView.builder(
      itemBuilder: (context, index) {
        return const CustomFoodStateContainer();
      },
    ));
  }
}



