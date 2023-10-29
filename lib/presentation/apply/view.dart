
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:tanta_app/presentation/feed_form/feed_form.dart';
import 'package:tanta_app/presentation/feed_insurance_request/feed_insurance_request.dart';

class ApplyView extends StatelessWidget {
  const ApplyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () => PersistentNavBarNavigator.pushNewScreen(
              context,
              withNavBar: false,
              screen: const FeedInsuranceRequest(),
            ),
            child: customContainerAsBottom('طلب تامين',),),
          const SizedBox(
            height: 50,
          ),
          GestureDetector(
            onTap: () =>PersistentNavBarNavigator.pushNewScreen(
              context,
              withNavBar: false,
              screen: const FeedForm(),
            ),
            child: customContainerAsBottom(
              'طلب نخالة',
            ),
          ),
        ],
      ),
    );

  }
  Container customContainerAsBottom(String txt) {
    return Container(
      alignment: Alignment.center,
      width: 300,
      height: 200,
      decoration: BoxDecoration(
          color: const Color(0xff8B6600),
          borderRadius: BorderRadius.circular(40)),
      child: Text(
        txt,
        style: const TextStyle(
            color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
      ),
    );
  }
}
