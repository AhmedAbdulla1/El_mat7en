import 'package:flutter/material.dart';
import 'package:tanta_app/presentation/common/freezed/freezed.dart';
import 'package:tanta_app/presentation/request_states/widgets/custom_request_state_container.dart';

class RequestsStates extends StatelessWidget {
   RequestsStates({super.key});
  List<InsuranceRequest> requests = [
InsuranceRequest(requestNumber: 5, date: DateTime.now()),
InsuranceRequest(requestNumber: 6, date: DateTime.now()),
InsuranceRequest(requestNumber: 7, date: DateTime.now()),


  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: requests.length,
        itemBuilder: (context, index) {
          return  CustomRequestsStateContainer(request: requests[index],);
        },
      ),
    );
  }
}
