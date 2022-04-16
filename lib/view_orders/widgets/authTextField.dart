import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../config/app_data.dart';




class AuthTextField extends StatelessWidget {
  // final String hint;
  final bool isPasswordField;
  final bool visible;
  final Function(String) validator;
  final TextEditingController controller;
  final VoidCallback onPwdTap;
  final bool cVisible;
  final IconData? topIcon;
  final String topText;

  const AuthTextField(
      {
        //required this.hint,
      required this.validator,
      required this.controller,
      required this.onPwdTap,
      this.isPasswordField = false,
      this.visible = false,
      this.cVisible = false,
       this.topIcon,
       required this.topText});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
        child: Container(
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5), color: Colors.white),
          child: TextFormField(
            validator: (val) => validator(val!),
            controller: controller,
            obscureText: visible,
            style: const TextStyle(
                letterSpacing: 1,
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w400),
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.only(top: 30,),
                hintText: topText,
                prefixIcon: Icon(Icons.search,size: 18,color: Colors.grey,),

                errorBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.red),
                    borderRadius: BorderRadius.circular(2)),
                focusedErrorBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.red),
                    borderRadius: BorderRadius.circular(10)),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppData.defaultColors.warmGreyNine),
                  borderRadius: BorderRadius.circular(5),

                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppData.defaultColors.cobalt),
                  borderRadius: BorderRadius.circular(5),
                )
            ),
          ),
        ),
      ),
    );
  }
}

// AppData.defaultColors.warmGreyNine
// AppData.defaultColors.cobalt