import 'package:flutter/material.dart';
import 'package:tanta_app/presentation/common/state_render/state_renderer_imp.dart';
import 'package:tanta_app/presentation/feed_states/view_model.dart';
import 'package:tanta_app/presentation/feed_states/widgets/custom_feed_state_container.dart';

class FeedStates extends StatelessWidget {
  final FeedStatesViewModel _viewModel = FeedStatesViewModel();

  FeedStates({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<StateFlow>(
      stream: _viewModel.outputState,
      builder: (context, snapshot) =>
          snapshot.data?.getScreenWidget(
            context,
            _getContent(),
            () {},
          ) ??
          _getContent(),
    );
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
