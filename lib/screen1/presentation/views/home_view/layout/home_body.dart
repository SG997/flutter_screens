import 'package:flutter/material.dart';
import 'package:flutter_screens/screen1/presentation/views/home_view/layout/widget/main_screen.dart';

import '../../../../config/front_end_config.dart';


class HomeViewBody extends StatefulWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

int selectIndex = 2;

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(2)),
              height: 35,
              width: MediaQuery.of(context).size.width / 1.3,
              child: Row(
                children: [
                  Expanded(
                      child: GestureDetector(
                    onTap: () {
                      selectIndex = 1;
                      setState(() {});
                    },
                    child: Container(
                      height: selectIndex == 1 ? 30 : 35,
                      decoration: BoxDecoration(
                          color: selectIndex == 1
                              ? FrontEndConfigs.kTabBarColor
                              : Colors.white,
                          borderRadius: BorderRadius.circular(2)),
                      child:  Center(child: Text('กรุณาเก็',
                        style: TextStyle(
                          color: selectIndex == 1? FrontEndConfigs.kAppBaseColor:Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      )),
                    ),
                  )),
                  Expanded(
                      child: GestureDetector(
                    onTap: () {
                      selectIndex = 2;
                      setState(() {});
                    },
                    child: Padding(
                      padding: selectIndex == 2
                          ? EdgeInsets.all(3.0)
                          : EdgeInsets.all(0),
                      child: Container(
                        height: selectIndex == 2 ? 30 : 35,
                        decoration: BoxDecoration(
                            color: selectIndex == 2
                                ? FrontEndConfigs.kTabBarColor
                                : Colors.white,
                            borderRadius: BorderRadius.circular(2)),
                        child:  Center(
                            child: Text(
                          'คุณโชคดี ',
                          style: TextStyle(
                            color: selectIndex == 2? FrontEndConfigs.kAppBaseColor:Colors.grey,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        )),
                      ),
                    ),
                  )),
                ],
              ),
            ),
            if (selectIndex == 1) const MainScreen(),
            if (selectIndex == 2) const MainScreen(),
          ],
        ),
      ),
    );
  }
}
