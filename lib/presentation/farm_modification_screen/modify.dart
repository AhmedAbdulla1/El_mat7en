
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanta_app/presentation/common/reusable/custom_button.dart';
import 'package:tanta_app/presentation/farm_modification_screen/add_delete_head.dart';
import 'package:tanta_app/presentation/feed_form/widgets/custom_text_form_filed.dart';
import 'package:tanta_app/presentation/feed_states/widgets/custom_app_bar.dart';
import 'package:tanta_app/presentation/resources/font_manager.dart';

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
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title:  Text(
          'تعديل المزرعه ',
          style: TextStyle(
              color: Colors.black,
              fontSize: 30.sp,
              fontFamily: FontConstants.fontFamily
            // fontWeight: FontWeight.bold
            
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: ()=>Navigator.pop(context),
          icon: const Icon(Icons.arrow_back,color: Colors.black,),
        ),
      ),
      body: Column(
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
      
    customButtom('اضافه' , false),
    SizedBox(width: 10,),
    customButtom('حذف' ,true),
    ],)
  ),
        )
        ],
      ),
      
    );
  }

  
  Container customButtom(String txt , bool isDelete) {
    return Container(
    height: 100,
    color: Colors.transparent,
    child: Center(
      child: SizedBox(
        width: 180,
        height: 65,
        
        child: ElevatedButton(
          onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => addHead(isDelete),)),
        style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)), 
        ),
      ),
          child: Text(
            txt,
            style: TextStyle(
              color: Colors.white,
              fontSize: 30
            ),
          ),
        ),
      ),
    ),
  );
  }
}

