import 'package:flutter/material.dart';


import 'package:tanta_app/presentation/feed_states/widgets/custom_app_bar.dart';
import 'package:tanta_app/presentation/feed_states/widgets/custom_feed_state_container.dart';

class FeedStates extends StatelessWidget {
  const FeedStates({super.key});

  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: ListView.builder(
        itemCount: 40,
        itemBuilder: (context, index) {
          return const CustomFeedStateContainer();
        },
      ),
    );
  }
}
