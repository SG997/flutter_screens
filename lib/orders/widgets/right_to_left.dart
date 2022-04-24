import 'package:flutter/cupertino.dart';
import 'package:flutter_screens/config/app_data.dart';
import 'package:flutter_screens/config/app_fonts.dart';

class RightToLeft extends StatelessWidget {
bool isCounterSelected;

RightToLeft(this.isCounterSelected);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: double.infinity,
      child: Stack(
        children: <Widget>[
          AnimatedPositioned(
            width: isCounterSelected ? 350 : 0,
            height: isCounterSelected ? 100 : 100,
            duration: const Duration(seconds: 1),
            curve: Curves.easeInOutBack,
            child: Container(
              height: 100,
              width: double.infinity,
              color: const Color(0xffF698C1).withOpacity(0.8),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'שלום',
                      style: AppFonts.heeboMedium.copyWith(
                          fontSize: 14, color: AppData.defaultColors.cobalt),
                    ),
                    const SizedBox(
                      width: 90,
                    ),
                    Icon(
                      CupertinoIcons.clear_circled_solid,
                      size: 30,
                      color: AppData.defaultColors.cobalt,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      'זה מבחן',
                      style: AppFonts.heeboMedium.copyWith(
                          fontSize: 14, color: AppData.defaultColors.cobalt),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
