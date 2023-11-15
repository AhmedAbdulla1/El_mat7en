import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:tanta_app/presentation/farm_modification_screen/add_delete_head.dart';
import 'widgets/custom_kind_count.dart';
class Modify extends StatefulWidget {
  const Modify({super.key});

  @override
  State<Modify> createState() => _ModifyState();
}

class _ModifyState extends State<Modify> {
  final TextEditingController maleCowController = TextEditingController();
  final TextEditingController femaleCowController = TextEditingController();
  final TextEditingController maleBuffaloController = TextEditingController();
  final TextEditingController femaleBuffaloController = TextEditingController();
  final TextEditingController maleGoatController = TextEditingController();
  final TextEditingController femaleGoatController = TextEditingController();
  final TextEditingController maleCamelController = TextEditingController();
  final TextEditingController femaleCamelController = TextEditingController();

  @override
  void dispose() {
    maleCowController.dispose();
    femaleCowController.dispose();
    maleBuffaloController.dispose();
    femaleBuffaloController.dispose();
    maleGoatController.dispose();
    femaleGoatController.dispose();
    maleCamelController.dispose();
    femaleCamelController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView(
            children: [
              CustomKindCount(
                title: 'جاموس',
                male: maleBuffaloController,
                female: femaleBuffaloController,
              ),
              CustomKindCount(
                title: 'بقر',
                male: maleCowController,
                female: femaleCowController,
              ),
              CustomKindCount(
                title: 'ماعز',
                male: maleGoatController,
                female: femaleGoatController,
              ),
              CustomKindCount(
                title: 'جمل',
                male: maleCamelController,
                female: femaleCamelController,
              ),
            ],
          ),
        ),
        Container(
          color: Colors.transparent,
          child: Align(
              alignment: Alignment.topCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  customButton('حذف', true),
                  const SizedBox(
                    width: 10,
                  ),
                  customButton('اضافه', false),
                ],
              )),
        )
      ],
    );
  }

  Container customButton(String txt, bool isDelete) {
    return Container(
      height: 100,
      color: Colors.transparent,
      child: Center(
        child: SizedBox(
          width: 180,
          height: 65,
          child: ElevatedButton(
            onPressed: () => PersistentNavBarNavigator.pushNewScreen(
              context,
              withNavBar: false,
              screen: addHead(isDelete),
            ),
            style: ElevatedButton.styleFrom(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
            ),
            child: Text(
              txt,
              style: const TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
        ),
      ),
    );
  }
}
