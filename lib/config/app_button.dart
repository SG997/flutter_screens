import 'package:flutter/material.dart';
import 'package:flutter_screens/config/app_fonts.dart';

class AppButton extends StatelessWidget {
  final String name;
  final Color? buttonColor;
  final double? height;
  final double? width;
  final double? textSize;
  final double? borderRadius;
  final double? padding;
  final Color? textColor;
  final FontWeight? fontWeight;
  final Function onTapped;
  final Gradient? gradient;


  const AppButton({Key? key,
    required this.name,
     this.buttonColor,
    this.gradient,
    this.height = 45,
    this.width,
    this.textSize = 14,
    this.textColor = Colors.white,
    this.fontWeight = FontWeight.w500,
    this.borderRadius = 12,
    required this.onTapped,

    this.padding = 10})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTapped(),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: padding!),
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
              color: buttonColor,
              gradient: gradient,
              borderRadius: BorderRadius.circular(borderRadius!),
          ),
          child: Center(
              child: Text(name, style: AppFonts.heeboMedium.copyWith(
                  fontSize: textSize!,
                  fontWeight: fontWeight!,
                  color: textColor
              ),)
          ),
        ),
      ),
    );
  }
}
