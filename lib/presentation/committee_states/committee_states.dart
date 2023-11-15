import 'package:flutter/material.dart';
import 'package:tanta_app/presentation/committee_states/widgets/custom_committee_state_container.dart';
import 'package:tanta_app/presentation/common/freezed/freezed.dart';
import 'package:tanta_app/presentation/request_states/widgets/custom_request_state_container.dart';

class CommitteeStates extends StatelessWidget {
   CommitteeStates({super.key});
   
  List<Committee> committees = [
    Committee(committeeNumber: 5, date: DateTime.now()),
    Committee(committeeNumber: 6, date: DateTime.now()),
    Committee(committeeNumber: 7, date: DateTime.now()),


  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: committees.length,
        itemBuilder: (context, index) {
          return  CustomCommitteesStateContainer(committee: committees[index],);
        },
      ),
    );
  }
}
