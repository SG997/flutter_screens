import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screens/config/app_data.dart';
import 'package:flutter_screens/config/app_fonts.dart';

class LeftToRight extends StatefulWidget {
bool isSelected;

LeftToRight(this.isSelected);

  @override
  State<LeftToRight> createState() => _LeftToRightState();
}

class _LeftToRightState extends State<LeftToRight> {
  int number = 0;
  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: 100,
      width: double.infinity,
      child: Stack(
        children: <Widget>[
          AnimatedPositioned(
            width: widget.isSelected ? 350 : 0,
            height: widget.isSelected ? 100 : 100,
            left: widget.isSelected ? 0.0 : 10.0,
            duration: const Duration(seconds: 1),
            curve: Curves.easeInOutBack,

            child: Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              color: const Color(0xffF6B0A9).withOpacity(0.9),
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'מבחן',
                        style: AppFonts.heeboMedium.copyWith(
                            fontSize: 14,
                            color: AppData.defaultColors.cobalt),
                      ),
                      Icon(
                        Icons.info_outlined,
                        color: AppData.defaultColors.cobalt,
                      ),
                      Text(
                        'מבחן 2/3 ',
                        style: AppFonts.heeboMedium.copyWith(
                            fontSize: 14,
                            color: AppData.defaultColors.cobalt),
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              number++;
                              setState(() {});
                            },
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: AppData.defaultColors.cobalt),
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            number.toString(),
                            style: AppFonts.heeboBold.copyWith(
                                fontSize: 22,
                                color: AppData.defaultColors.cobalt),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          GestureDetector(
                            onTap: () {
                              number--;
                              setState(() {});
                            },
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: AppData.defaultColors.cobalt),
                              child: const Icon(
                                CupertinoIcons.minus,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
