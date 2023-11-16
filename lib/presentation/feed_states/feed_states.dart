import 'package:flutter/material.dart';
import 'package:tanta_app/presentation/feed_states/widgets/custom_feed_state_container.dart';

class FeedStates extends StatelessWidget {

  FeedStates({super.key});

  @override
  Widget build(BuildContext context) {
    return _getContent();
  }

  Widget _getContent() {
    return Expanded(
      child: StreamBuilder(
        stream:  null,
        builder: (context,snapshot) =>ListView.builder(
          itemCount: 40,
          itemBuilder: (context, index) {
            return const CustomFeedStateContainer();
          },
        ),
      ),
    );
  }
}
