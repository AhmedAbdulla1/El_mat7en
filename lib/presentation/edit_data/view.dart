import 'package:flutter/material.dart';

class EditDataView extends StatelessWidget {
  const EditDataView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'تعديل البيانات ',
        style: TextStyle(
          color: Colors.black,
          fontSize: 40,
        ),
      ),
    );
  }
}
