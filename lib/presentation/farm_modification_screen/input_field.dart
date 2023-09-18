import 'package:flutter/material.dart';


class InputField extends StatelessWidget {
  const InputField({Key? key, required this.hint, this.controller, this.widget}) : super(key: key);


  final String hint ;
  final TextEditingController? controller;
  final Widget? widget;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 16),

        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                padding: const EdgeInsets.only(left: 14),
                margin: const EdgeInsets.only(top: 10),
                height: 52,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(
                    color: Color(0xffB1A072),
                    width: 2
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: controller,
                        autofocus: false,
                        readOnly: widget != null ? true : false,
                        // style: subTitleStyle,
                        cursorColor: Colors.grey[100] ,
                        decoration: InputDecoration(
                          hintText: '\t \t' + hint,
                          hintStyle: TextStyle(fontSize: 19.0, color: Colors.grey , fontWeight: FontWeight.w600),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,
                                width: 0,
                              )
                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,
                                width: 0,
                              )
                          ),
                        ),
                      ),
                    ),
                    widget ?? Container(),
                  ],
                )
            ),
          ],
        )
    );
  }
}
