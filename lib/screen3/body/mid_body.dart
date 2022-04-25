import 'package:flutter/material.dart';
import 'package:flutter_screens/config/app_data.dart';
import 'package:flutter_screens/config/app_fonts.dart';

class MidBodyView extends StatelessWidget {
  const MidBodyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28.0,vertical: 12),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'טקסט באמצע',
            style: AppFonts.heeboMedium
                .copyWith(fontSize: 14, color: AppData.defaultColors.cobalt),
          ),
          const SizedBox(height: 10,),
          Text(
            'דמטקסט דמה',
            style: AppFonts.heeboLight
                .copyWith(fontSize: 12, color: AppData.defaultColors.cobalt),
          ),
          Text(
            'דמטקסט דמטקסט דמה',
            style: AppFonts.heeboLight
                .copyWith(fontSize: 12, color: AppData.defaultColors.cobalt),
          ),
          Text(
            '898766',
            style: AppFonts.heeboLight
                .copyWith(fontSize: 12, color: AppData.defaultColors.cobalt),
          ),
          Text(
            '052372873',
            style: AppFonts.heeboLight
                .copyWith(fontSize: 12, color: AppData.defaultColors.cobalt),
          ),
          const SizedBox(height: 10,),
        ],
      ),
    );
  }
}
