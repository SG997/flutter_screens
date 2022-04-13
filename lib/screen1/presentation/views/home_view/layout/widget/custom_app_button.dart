import 'package:flutter/material.dart';

class CustomAppButton extends StatelessWidget {
  String text;
  VoidCallback ontap;

  CustomAppButton(this.text, this.ontap);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  const Color(0XFF1f94fd).withOpacity(0.8),
                  const Color(0XFF3025db).withOpacity(0.9),
                ])),
        height: 36,
        width: 140,
        child: Center(
            child: Text(text,style: TextStyle(color: Colors.white,fontSize: 13),)),
      ),
    );
  }
}
