import 'package:flutter/material.dart';
import 'package:flutter_screens/config/app_button.dart';
import 'package:flutter_screens/config/app_data.dart';
import 'package:flutter_screens/config/app_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../../providers/counter_container_provider.dart';

class GetCounter extends StatefulWidget {
  const GetCounter({Key? key}) : super(key: key);

  @override
  State<GetCounter> createState() => _GetCounterState();
}


class _GetCounterState extends State<GetCounter> {

  int number = 0;
  @override
  Widget build(BuildContext context) {
    var counterState = Provider.of<CounterStateProvider>(context);
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
                  height: 50,
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
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        number++;
                        setState(() {});
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: AppData.defaultColors.cobalt),
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      number.toString(),
                      style: AppFonts.heeboMedium.copyWith(
                          color: AppData.defaultColors.black, fontSize: 22),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        if (number == 0) {

                        } else {
                          number--;
                          setState(() {});
                        }
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: AppData.defaultColors.cobalt),
                        child: const Icon(
                          FontAwesomeIcons.minus,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                AppButton(
                  height: 40,
                  width: 190,
                  name: 'אחו',
                  onTapped: () {
                    Navigator.pop(context);
                    Navigator.pop(context);
                    if (number == 0) {
                     counterState.setCounterZero(true);
                     counterState.setCounterValue(false);
                     print("hiiiiiii");
                    } else {
                      counterState.setCounterValue(true);
                      counterState.setCounterZero(false);
                      print('ooookk');
                    }
                  },
                  buttonColor: AppData.defaultColors.red,
                )
              ],
            )),
      ],
    );
  }
}
