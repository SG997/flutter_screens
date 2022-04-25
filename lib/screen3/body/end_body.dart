import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screens/config/app_data.dart';
import 'package:flutter_screens/config/app_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EndBodyView extends StatelessWidget {
  const EndBodyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffe9f7fe),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'טקסט דמה',
              style: AppFonts.heeboMedium
                  .copyWith(fontSize: 14, color: AppData.defaultColors.cobalt),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      const Icon(
                        FontAwesomeIcons.ccMastercard,
                        size: 12,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'כרטיס מאסטר 6768',
                        style: AppFonts.heeboMedium.copyWith(
                            fontSize: 16, color: AppData.defaultColors.blue),
                      )
                    ],
                  ),
                  SizedBox(height: 10,),
                  _getRow(
                    'כּוֹתֶרֶת',
                    '1996',
                    AppFonts.assistantMedium.copyWith(
                        fontSize: 16, color: AppData.defaultColors.blue),
                  ),
                  SizedBox(height: 5,),
                  _getRow(
                    'עוזר מדיום',
                    '200',
                    AppFonts.assistantMedium.copyWith(
                        fontSize: 16, color: AppData.defaultColors.blue),
                  ),
                  SizedBox(height: 5,),
                  _getRow(
                    'שלום שם',
                    '2,0090',
                    AppFonts.assistantBold.copyWith(
                        fontSize: 16, color: AppData.defaultColors.blue),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25,),
          ],
        ),
      ),
    );
  }

  Widget _getRow(String text1, String text2, TextStyle style) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text1,
          style: AppFonts.assistantNormal
              .copyWith(fontSize: 16, color: AppData.defaultColors.blue),
        ),
        const SizedBox(
          width: 10,
        ),
        Text(text2, style: style)
      ],
    );
  }
}
