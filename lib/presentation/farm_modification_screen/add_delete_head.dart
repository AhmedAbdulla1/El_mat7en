

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:tanta_app/presentation/common/reusable/custom_scaffold.dart';
import 'package:tanta_app/presentation/resources/color_manager.dart';
import 'package:tanta_app/presentation/resources/values_manager.dart';

import '../feed_form/widgets/custom_text_form_filed.dart';
import '../resources/assets_manager.dart';
import '../resources/string_manager.dart';

class addHead extends StatefulWidget {
  const addHead([this.isDelete = false]);

  final bool isDelete;


  @override
  State<addHead> createState() => _addHeadState();
}

class _addHeadState extends State<addHead> {
  TextEditingController data = TextEditingController();
  TextEditingController image = TextEditingController();
  TextEditingController id = TextEditingController();

  File? _image;
  final ImagePicker _imagePicker = ImagePicker();

  DateTime _selectDate = DateTime.now();
  String hint = DateFormat('yyyy-MM-d').format(DateTime.now()).toString();


  _getDateFromUser() async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: _selectDate,
      firstDate: DateTime(2015),
      lastDate: DateTime(2030),
      cancelText: 'الغاء',
      confirmText: "تم",
      builder: (context, child) {
        return Theme(
          data: ThemeData.light().copyWith(
            primaryColor: ColorManager.primary,
            // Change the color here
            colorScheme: ColorScheme.light(primary: ColorManager.primary),
            // Change the color here
            buttonTheme: const ButtonThemeData(
              textTheme: ButtonTextTheme.primary,
            ),
          ),
          child: child!,
        );
      },
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
    List<String> deletedList = ['الحذف للبيع', 'الحذف للذبح','الحذف للموت'];

    // log((DateFormat('yyyy-MM-d').format(DateTime.now()).toString()));

    return customScaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                      top: AppPadding.p30.h, bottom: AppPadding.p30.h),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const Spacer(flex: 1,),
                            Text(
                              widget.isDelete? 'حذف' : 'اضافة رأس',
                              style: TextStyle(
                                  fontSize: 30.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            const Spacer(flex: 1,),
                            IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(
                                Icons.arrow_forward,
                                size: 30.sp,
                              ),
                            ),
                          ],
                        ),
                        const Divider(height: 3, color: Colors.black,),
                      ],
                    ),
                  ),
                ),
                ///////////////
                if(widget.isDelete) 
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppPadding.p10.w,
                  ),
                  child: const Text('سبب الحذف' , style: TextStyle(color: Colors.black , fontSize: 25, fontWeight: FontWeight.w500),),
                  ),
                  if(widget.isDelete ) 
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppPadding.p40.w,
                    
                    vertical: AppPadding.p5.w,
                  ),
                  child:
                      DropdownMenu(
                        width: MediaQuery.sizeOf(context).width - 80.w,
                        label: Text(
                          deletedList[0],
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                        textStyle: Theme.of(context).textTheme.displayMedium,
                        dropdownMenuEntries: deletedList
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
                

                /////////////////////
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppPadding.p10.w,
                  ),
                  child: const Text('النوع' , style: TextStyle(color: Colors.black , fontSize: 25, fontWeight: FontWeight.w500),),
                  ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppPadding.p40.w,
                    
                    vertical: AppPadding.p5.w,
                  ),
                  child:
                      DropdownMenu(
                        width: MediaQuery.sizeOf(context).width - 80.w,
                        label: Text(
                          items[1],
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
                
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppPadding.p10.w,
                  ),
                  child: const Text('الجنس' , style: TextStyle(color: Colors.black , fontSize: 25, fontWeight: FontWeight.w500),),
                  ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppPadding.p40.w,
                    
                    vertical: AppPadding.p5.w,
                  ),
                  child: DropdownMenu(
                    width: MediaQuery.sizeOf(context).width - 80.w,
                    label: Text(
                      list[0],
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                    textStyle: Theme.of(context).textTheme.displayMedium,
                    dropdownMenuEntries: list
                        .map((item) => DropdownMenuEntry(
                            style: const ButtonStyle(
                              textStyle: MaterialStatePropertyAll(TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w600,
                              )),
                              padding: MaterialStatePropertyAll(
                                EdgeInsets.only(
                                  right: 10,
                                  left: 10,
                                ),
                              ),
                            ),
                            value: item,
                            label: item))
                        .toList(),
                    onSelected: (val) {},
                  ),
                ),
                
              if (!widget.isDelete)
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppPadding.p10.w,
                  ),
                  child: const Text('تاريخ الميلاد' , style: TextStyle(color: Colors.black , fontSize: 25, fontWeight: FontWeight.w500),),
                  ),
                  if(!widget.isDelete)
                Padding(
            padding: EdgeInsets.symmetric(
                    horizontal: AppPadding.p40.w,
                    
                    vertical: AppPadding.p5.w,
                  ),
            child: CustomTextFormFiled(
              hintText: hint,
              onTap: () {
                _getDateFromUser();
              },
              textEditingController: data,
            ),
          ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppPadding.p10.w,
                  ),
                  child: const Text('رقم الدبلة' , style: TextStyle(color: Colors.black , fontSize: 25, fontWeight: FontWeight.w500),),
                  ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: AppPadding.p40.w),
                  child: CustomTextFormFiled(
                    hintText: '---',
                    textEditingController: id,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppPadding.p10.w,
                  ),
                  child: const Text('صورة الدبلة', style: TextStyle(color: Colors.black , fontSize: 25, fontWeight: FontWeight.w500),),
                  ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: AppPadding.p40.w),
                  child: CustomTextFormFiled(
                    hintText: 'اضافة صورة',
                    textEditingController: image,
                    onTap: () {
                      print('image');
                      _showPicker(context);
                    },
                  ),
                ),
              ],
            ),
          ),

        Container(
  color: Colors.transparent,
  child: Align(
    alignment: Alignment.topCenter,
    child: Container(
      height: 100,
      color: Colors.transparent,
      child: Center(
        child: SizedBox(
          width: 300,
          height: 65,
          
          child: ElevatedButton(
            onPressed: () {},
            child: Text(
              widget.isDelete ? 'حذف':'اضافة',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    ),
  ),
        )

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
