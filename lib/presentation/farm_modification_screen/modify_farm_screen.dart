import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:tanta_app/presentation/common/reusable/custom_scaffold.dart';
import 'package:tanta_app/presentation/feed_form/widgets/custom_text_form_filed.dart';
import 'package:tanta_app/presentation/feed_states/widgets/custom_app_bar.dart';
import 'package:tanta_app/presentation/resources/assets_manager.dart';
import 'package:tanta_app/presentation/resources/color_manager.dart';
import 'package:tanta_app/presentation/resources/string_manager.dart';
import 'package:tanta_app/presentation/resources/values_manager.dart';

class ModifyFarmScreen extends StatefulWidget {
  const ModifyFarmScreen({super.key});

  @override
  State<ModifyFarmScreen> createState() => _ModifyFarmScreenState();
}

class _ModifyFarmScreenState extends State<ModifyFarmScreen> {
  DateTime _selectDate = DateTime.now();
  String hint = 'تاريخ الميلاد';
  File? _image;
  final ImagePicker _imagePicker = ImagePicker();

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
    List<String> list = ['ذكر', 'انثي'];

    return customScaffold(
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
                top: AppPadding.p30.h, bottom: AppPadding.p50.h),
            child: const CustomAppBar(
              title: AppStrings.editFarm,
            ),
          ),
          Center(
            child: DropdownMenu(
              width: 270,
              label: Text(
                'النـوع',
                style: Theme.of(context).textTheme.displayMedium,
              ),
              textStyle: Theme.of(context).textTheme.displayMedium,
              dropdownMenuEntries: items
                  .map(
                    (item) => DropdownMenuEntry(
                      style: const ButtonStyle(
                        padding: MaterialStatePropertyAll(
                          EdgeInsets.only(
                            right: 10,
                            left: 10,
                          ),
                        ),
                        fixedSize: MaterialStatePropertyAll(Size(270, 1)),
                      ),
                      value: item,
                      label: item,
                    ),
                  )
                  .toList(),
              onSelected: (val) {
                // setState(() {
                //   selected = val!;
                // });
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
                // setState(() {
                //   selected = val!;
                // });
              },
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          CustomTextFormFiled(
            hintText: hint,
            onTap: () {
              _getDateFromUser();
            },
          ),


          const SizedBox(
            height: 30,
          ),
          CustomTextFormFiled(
            hintText: 'id',
          ),
          CustomTextFormFiled(
            hintText: 'صورة',
            onTap: () {
              print('image');
              _showPicker(context);
            },
          ),
        ],
      ),
    );
  }

  _showPicker(BuildContext context) {
    showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(
            AppSize.s30,
          ),
        ),
      ),
      context: context,
      builder: (BuildContext context) {
        return SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: const Icon(Icons.camera),
                title: Text(
                  AppStrings.photoGallery,
                  style: TextStyle(color: ColorManager.primary),
                ),
                onTap: () {
                  _imageFromGallery();
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.camera_alt_rounded,
                ),
                title: Text(
                  AppStrings.photoCamera,
                  style: TextStyle(
                    color: ColorManager.primary,
                  ),
                ),
                onTap: () {
                  _imageFromCamera();
                  Navigator.of(context).pop();
                },
              )
            ],
          ),
        );
      },
    );
  }

  _imageFromGallery() async {
    var image = await _imagePicker.pickImage(source: ImageSource.gallery);
    // _viewModel.setProfilePicture(File(image?.path ?? ""));
  }

  _imageFromCamera() async {
    var image = await _imagePicker.pickImage(source: ImageSource.camera);
    // _viewModel.setProfilePicture(File(image?.path ?? ""));
  }

  Widget _personPicketByUser(File? image) {
    if (image != null && image.path.isNotEmpty) {
      return Image.file(
        image,
        fit: BoxFit.contain,
      );
    } else {
      return Image.asset(
        ImageAssets.appLogo,
        fit: BoxFit.cover,
      );
    }
  }
}
