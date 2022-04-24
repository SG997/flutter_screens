import 'package:flutter/material.dart';
import 'package:flutter_screens/config/app_data.dart';
import 'package:flutter_screens/config/app_fonts.dart';
import 'package:flutter_screens/orders/widgets/get_counter.dart';

contentBox(context) {
  return Stack(
    children: <Widget>[
      Container(
          width: 300,
          height: 230,
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 1),
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Column(
            children: [
              Container(
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.1),
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                ),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'של אחו',
                      style: AppFonts.heeboMedium.copyWith(
                        fontSize: 14,
                        color: AppData.defaultColors.blue,
                      ),
                    ),
                    Text(
                      'של ח :3',
                      style: AppFonts.heeboMedium.copyWith(
                        fontSize: 17,
                        color: AppData.defaultColors.accent,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Dialog(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          elevation: 0,
                          child: const GetCounter(),
                        );
                      });
                },
                child: _getRow(Icons.info_outlined, const Color(0xffDEA9AB),
                    'זהו טקסט הכותרת'),
              ),
              const SizedBox(
                height: 30,
              ),
              _getRow(Icons.cancel, const Color(0xffE80E86), 'זהו טקסט כותרת'),
            ],
          )),
    ],
  );
}

Widget _getRow(IconData icon, Color color, String text) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 38.0),
    child: Row(
      children: [
        Icon(
          icon,
          color: color,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(text),
      ],
    ),
  );
}


