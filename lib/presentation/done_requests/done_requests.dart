import 'package:flutter/material.dart';
import 'package:tanta_app/presentation/common/freezed/freezed.dart';
import 'package:tanta_app/presentation/done_requests/widgets/custom_request_done_container.dart';

class RequestsDone extends StatelessWidget {
  RequestsDone({super.key});

  final List<InsuranceRequest> requests = [
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
          return CustomRequestsStateContainer(
            request: requests[index],
          );
        },
      ),
    );
  }
}
