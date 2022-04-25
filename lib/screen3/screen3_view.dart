import 'package:flutter/material.dart';
import 'package:flutter_screens/config/app_data.dart';
import 'package:flutter_screens/config/app_fonts.dart';
import 'package:flutter_screens/screen3/body/end_body.dart';
import 'package:flutter_screens/screen3/body/list_body.dart';
import 'package:flutter_screens/screen3/body/mid_body.dart';

class Screen3 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Screen3();
  }
}

class _Screen3 extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      color: Colors.white,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 8),
              child: Text(
                'בדיקה (6)',
                style: AppFonts.heeboMedium
                    .copyWith(fontSize: 14, color: AppData.defaultColors.cobalt),
              ),
            ),
            const ListBodyWidget(),
            const MidBodyView(),
            const EndBodyView(),
          ],
        ),
      ),
    ));
  }
}
