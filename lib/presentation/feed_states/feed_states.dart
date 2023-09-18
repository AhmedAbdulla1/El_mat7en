import 'package:flutter/material.dart';

import 'package:tanta_app/presentation/common/reusable/custom_scaffold.dart';
import 'package:tanta_app/presentation/feed_states/widgets/custom_app_bar.dart';
import 'package:tanta_app/presentation/feed_states/widgets/custom_feed_state_container.dart';
import 'package:tanta_app/presentation/resources/string_manager.dart';
import 'package:tanta_app/presentation/resources/values_manager.dart';

class FeedStates extends StatelessWidget {
  const FeedStates({super.key});

  @override
  Widget build(BuildContext context) {
    return customScaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: AppPadding.p30),
              child: CustomAppBar(
                title: AppStrings.tracking,
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return const CustomFeedStateContainer();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}