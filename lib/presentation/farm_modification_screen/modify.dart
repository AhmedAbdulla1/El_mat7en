import 'package:flutter/material.dart';
import 'package:tanta_app/presentation/farm_modification_screen/add_delete_head.dart';

class Modify extends StatelessWidget {
  const Modify({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () => Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => addHead(),)),
              child: customContainerAsButtom('اضافة رأس')),
            const SizedBox(height: 50,),
            GestureDetector(
              onTap: () => Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => addHead(true),)),
              child: customContainerAsButtom('حذف')),
            
          ],
        ),
      ),
    );
  }

  Container customContainerAsButtom(String txt) {
    return Container(
            alignment: Alignment.center,
    
            width: 300,
            height: 200,
            decoration: BoxDecoration(
              color: const Color(0xff8B6600),
              borderRadius: BorderRadius.circular(40)
            ),
            child: Text(txt,style: const TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.bold
              
            ),),
          );
  }
}