import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
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
    DateTime? _pickedDate = await showDatePicker(
      context: context,
      initialDate: _selectDate,
      firstDate: DateTime(2015),
      lastDate: DateTime(2030),
    );
    if (_pickedDate != null) {
      setState(() {
        _selectDate = _pickedDate;
        hint = DateFormat.yMd().format(_selectDate);
      });
    } else
      print('null or somthing wrong');
  }

  @override
  Widget build(BuildContext context) {
    List<String> _items = ['جاموس', 'بقر', 'جمل'];
    String selected;
    List<String> _list = ['ذكر', 'انثي'];
    String? id;

    return Scaffold(
      body: Container(
          width: double.infinity,
          child: ListView(
            // crossAxisAlignment: CrossAxisAlignment.start,

              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.only(right: 10, top: 50),
                  child: Text(
                    '• تعديل المزرعة',
                    style: TextStyle(
                        color: Color(0xff8B6600),
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
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
                    dropdownMenuEntries: _items
                        .map((item) => DropdownMenuEntry(
                        style: const ButtonStyle(
                          padding: MaterialStatePropertyAll(
                              EdgeInsets.only(right: 10 , left: 10)),
                          fixedSize:
                          MaterialStatePropertyAll(Size(270, 1)),
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
                    dropdownMenuEntries: _list
                        .map((item) => DropdownMenuEntry(
                        style: const ButtonStyle(
                          textStyle: MaterialStatePropertyAll(TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w600)),
                          padding: MaterialStatePropertyAll(
                              EdgeInsets.only(right: 10 , left: 10)),
                          fixedSize:
                          MaterialStatePropertyAll(Size(270, 1)),
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
                  child: SizedBox(
                    width: 270,
                    child: TextField(
                      cursorColor: Colors.grey,
                      style: const TextStyle(
                        fontSize: 16,
                        height: 0.5,
                      ),
                      decoration: InputDecoration(
                        hintStyle: const TextStyle(
                            fontSize: 19.0,
                            color: Colors.grey,
                            fontWeight: FontWeight.w500),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                              color: Color(0xffB1A072), width: 2),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                              color: Color(0xffB1A072), width: 2),
                        ),
                        hintText: '\t' + 'id',
                      ),
                    ),
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
              ])),
    );
  }
}
