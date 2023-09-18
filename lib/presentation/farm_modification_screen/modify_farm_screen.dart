import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:tanta_app/presentation/common/reusable/custom_scaffold.dart';
import 'package:tanta_app/presentation/feed_form/widgets/custom_text_form_filed.dart';
import 'package:tanta_app/presentation/feed_states/widgets/custom_app_bar.dart';
import 'package:tanta_app/presentation/resources/string_manager.dart';
import 'package:tanta_app/presentation/resources/values_manager.dart';
import 'input_field.dart';

class ModifyFarmScreen extends StatefulWidget {
  const ModifyFarmScreen({super.key});

  @override
  State<ModifyFarmScreen> createState() => _ModifyFarmScreenState();
}

class _ModifyFarmScreenState extends State<ModifyFarmScreen> {
  DateTime _selectDate = DateTime.now();
  String hint = 'تاريخ الميلاد';
  bool isClicked = false;
  File? _image;
  final _picker = ImagePicker();

  Future<void> _openImagePicker() async {
    final XFile? pickedImage =
        await _picker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        _image = File(pickedImage.path);
      });
    }
  }

  _getDateFromUser() async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: _selectDate,
      firstDate: DateTime(2015),
      lastDate: DateTime(2030),
    );
    if (pickedDate != null) {
      setState(() {
        _selectDate = pickedDate;
        hint = DateFormat.yMd().format(_selectDate);
      });
    } else {
      debugPrint('null or something wrong');
    }
  }

  @override
  Widget build(BuildContext context) {
    List<String> items = ['جاموس', 'بقر', 'جمل'];
    String selected;
    List<String> list = ['ذكر', 'انثي'];
    String? id;

    return customScaffold(
      body: SizedBox(
        width: double.infinity,
        child: ListView(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(top: AppPadding.p30),
              child: CustomAppBar(
                title:AppStrings.editFarm,
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            Center(
              child: DropdownMenu(
                width: 270,
                hintText: 'النـوع',
                textStyle: const TextStyle(
                    fontSize: 17.0,
                    color: Colors.grey,
                    fontWeight: FontWeight.w600),
                dropdownMenuEntries: items.map((item) => DropdownMenuEntry(
                        style: const ButtonStyle(
                          padding: MaterialStatePropertyAll(
                              EdgeInsets.only(right: 10, left: 10)),
                          fixedSize: MaterialStatePropertyAll(Size(270, 1)),
                        ),
                        value: item,
                        label: item))
                    .toList(),
                onSelected: (val) {
                  setState(() {
                    selected = val!;
                  });
                },
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: DropdownMenu(
                width: 270,
                hintText: 'الجنس',
                textStyle: const TextStyle(
                    fontSize: 18.0,
                    color: Color(0xff9D9D9D),
                    fontWeight: FontWeight.w600),
                dropdownMenuEntries: list
                    .map((item) => DropdownMenuEntry(
                        style: const ButtonStyle(
                          textStyle: MaterialStatePropertyAll(TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.w600)),
                          padding: MaterialStatePropertyAll(
                              EdgeInsets.only(right: 10, left: 10)),
                          fixedSize: MaterialStatePropertyAll(Size(270, 1)),
                        ),
                        value: item,
                        label: item))
                    .toList(),
                onSelected: (val) {
                  setState(() {
                    selected = val!;
                  });
                },
              ),
            ),
            const SizedBox(
              height: 30,
            ),

            Center(
              child: SizedBox(
                width: 270,
                child: InputField(
                    hint: hint,
                    widget: IconButton(
                      onPressed: () {
                        _getDateFromUser();
                      },
                      icon: const Icon(Icons.calendar_today_outlined),
                      color: Colors.grey[600],
                    )),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: CustomTextFormFiled(
                 hintText: 'id',
              ),
            ),
            Center(
              child: SizedBox(
                width: 270,
                child: InputField(
                    hint: 'صورة',
                    widget: IconButton(
                      onPressed: _openImagePicker,
                      icon: Icon(
                        Icons.image_outlined,
                        color: Colors.grey[600],
                      ),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
