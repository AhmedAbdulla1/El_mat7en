import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

import '../common/reusable/custom_scaffold.dart';
import '../resources/assets_manager.dart';
import '../resources/font_manager.dart';
import '../resources/values_manager.dart';

class VeterinaryScreen extends StatefulWidget {
  const VeterinaryScreen({super.key});

  @override
  State<VeterinaryScreen> createState() => _VeterinaryScreenState();
}

class _VeterinaryScreenState extends State<VeterinaryScreen> {
  final ImagePicker _imagePicker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    return customScaffold(
      body: ListView(
        children: <Widget>[
          // Padding(
          //   padding: EdgeInsets.only(
          //     top: AppPadding.p30.h,
          //   ),
          //   child: IconButton(
          //     alignment: Alignment.topLeft,
          //     onPressed: () {
          //       // Navigator.pop(context);
          //     },
          //     icon: Icon(
          //       Icons.arrow_forward,
          //       size: 30.sp,
          //     ),
          //   ),
          // ),
          Padding(
            padding: EdgeInsets.only(
                top: AppPadding.p30.h, bottom: AppPadding.p50.h),
            child: Center(
              child: Text(
                'البيطري',
                style: Theme.of(context).textTheme.labelLarge,
              ),
            ),
          ),
          const SizedBox(
            height: 70,
          ),
          Column(
            children: [
              SizedBox(
                width: 145,
                height: 50,
                child: TextFormField(
                  onTap: () {
                    _imageFromCamera();
                    Navigator.of(context).pop();
                  },
                  decoration: InputDecoration(
                    suffixIcon: const Icon(
                      Icons.camera_alt_outlined,
                      color: Color(0xff7D7D7D),
                    ),
                    hintText: 'أخذ صورة',
                    hintStyle: TextStyle(
                      height: 3.5,
                      fontSize: FontSize.s17,
                      color: const Color(0xff7D7D7D),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 70,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppPadding.p30.w,
                  vertical: AppPadding.p10.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 120,
                      height: 50,
                      child: TextFormField(
                        onTap: () {},
                        decoration: InputDecoration(
                          suffixIcon: const Icon(
                            Icons.done,
                            color: Color(0xff7D7D7D),
                          ),
                          hintText: 'اعتماد',
                          hintStyle: TextStyle(
                            height: 3.5,
                            fontSize: FontSize.s17,
                            color: const Color(0xff7D7D7D),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 110,
                      height: 50,
                      child: TextFormField(
                        onTap: () {},
                        decoration: InputDecoration(
                          suffixIcon: const Icon(
                            Icons.delete,
                            color: Color(0xff7D7D7D),
                          ),
                          hintText: 'حذف',
                          hintStyle: TextStyle(
                            height: 3.5,
                            fontSize: FontSize.s17,
                            color: const Color(0xff7D7D7D),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 70,
              ),
              SizedBox(
                width: 145,
                height: 50,
                child: TextFormField(
                  onTap: () {},
                  decoration: InputDecoration(
                    hintText: 'اختيار اللجنة',
                    hintStyle: TextStyle(
                      height: 3.5,
                      fontSize: FontSize.s17,
                      color: const Color(0xff7D7D7D),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
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
