import 'package:flutter/material.dart';

import 'package:tanta_app/presentation/common/reusable/custom_scaffold.dart';
import 'package:tanta_app/presentation/feed_states/widgets/custom_app_bar.dart';
import 'package:tanta_app/presentation/feed_states/widgets/custom_feed_state_container.dart';

class FeedStates extends StatelessWidget {
  const FeedStates({super.key});

  @override
  Widget build(BuildContext context) {
    return customScaffold(
        body: SafeArea(
      child: Column(
        children: [
          const CustomAppBar(title: 'متابعة الطلب'),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return const CustomFeedStateContainer();
              },
            ),
          ),
        ],
      ),
    ));
  }
}
