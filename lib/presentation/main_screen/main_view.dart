import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:tanta_app/presentation/common/reusable/custom_button.dart';
import 'package:tanta_app/presentation/farm_modification_screen/modify.dart';

import 'package:tanta_app/presentation/main_screen/main_view_model.dart';
import 'package:tanta_app/presentation/feed_form/feed_form.dart';
import 'package:tanta_app/presentation/feed_states/feed_states.dart';
import 'package:tanta_app/presentation/resources/assets_manager.dart';
import 'package:tanta_app/presentation/resources/color_manager.dart';
import 'package:tanta_app/presentation/resources/font_manager.dart';
import 'package:tanta_app/presentation/resources/routes_manager.dart';
import 'package:tanta_app/presentation/resources/string_manager.dart';
import 'package:tanta_app/presentation/resources/values_manager.dart';

class FarmerScreen extends StatefulWidget {
  const FarmerScreen({Key? key}) : super(key: key);

  @override
  State<FarmerScreen> createState() => _FarmerScreenState();
}

class _FarmerScreenState extends State<FarmerScreen> {
  final MainViewModel _viewModel = MainViewModel();
  final PersistentTabController _controller = PersistentTabController();
  List<String> appBarTitle = [
    "تقديم الطلبات",
    "متابعة الطلبات",
    "تعديل المزرعة",
    "تعديل البيانات",
  ];
  List<PersistentBottomNavBarItem> navBarItems = [
    PersistentBottomNavBarItem(
      icon: SvgPicture.asset(ImageAssets.order),
      title: "تقديم الطلب",
      activeColorPrimary:  ColorManager.primary,
      inactiveColorPrimary: Colors.grey,

    ),
    PersistentBottomNavBarItem(
      icon: Image.asset(ImageAssets.trackOrder),
      title: "متابعة الطلب",
      activeColorPrimary:  ColorManager.primary,
      inactiveColorPrimary: Colors.grey,
    ),
    PersistentBottomNavBarItem(
      icon: Image.asset(ImageAssets.editFarm),
      title: "تعديل المزرعة",
      activeColorPrimary: ColorManager.primary,
      inactiveColorPrimary: Colors.grey,
    ),
    PersistentBottomNavBarItem(
      icon: Image.asset(ImageAssets.editData),
      title: "تعديل البيانات",
      activeColorPrimary: ColorManager.primary,
      inactiveColorPrimary: Colors.grey,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    _controller.addListener(() {
      _viewModel.setIndex(_controller.index);
      // Perform actions based on the selected tab index
    });
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: StreamBuilder<int>(
            stream: _viewModel.outputIndex,
            builder: (context, snapshot) {
              return Text(
                appBarTitle[_controller.index],
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 36.sp,
                    fontFamily: FontConstants.fontFamily
                    // fontWeight: FontWeight.bold
                    ),
              );
            }),
        centerTitle: true,
      ),
      body: PersistentTabView(
        context,
        controller: _controller,
        items: navBarItems,
        screens: const [
          // Add your tab views/screens here
          FeedForm(),
          FeedForm(),
          Modify(),
          FeedStates(),
          // Add more screens for other tabs
        ],
        confineInSafeArea: true,
        backgroundColor: Colors.white,
        // Customize as needed
        handleAndroidBackButtonPress: true,
        resizeToAvoidBottomInset: true,
        stateManagement: true,
        hideNavigationBarWhenKeyboardShows: true,
        // hideNavigationBar: true,
      ),
    );
  }

}
