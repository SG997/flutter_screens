import 'package:flutter/material.dart';

import '../config/app_data.dart';
import '../config/app_fonts.dart';
import 'widgets/all_orders.dart';


class IncomeOrderPage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return _IncomeOrderPage();
  }
}

class _IncomeOrderPage extends State<IncomeOrderPage> {
  _IncomeOrderPage();

  bool inIncomeState = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xfff1f9fb),Color(0xfff4fdfa),])),
      child:  SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Container(
                  margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    color: const Color(0xffc3d6e6),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Center(
                    child: ImageIcon(AssetImage("assets/images/chevron.png",), size: 15,),
                  ),
                ),

                Text(
                  'הזמנות נכנסות',
                  style: AppFonts.heeboBold.copyWith(
                    color: AppData.defaultColors.cobaltFour,
                    fontSize: 14.0,
                    height: 1.9,
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(left: 18.0),
                  child: ImageIcon(AssetImage("assets/images/burger_meun.png",),color: AppData.defaultColors.cobalt, size: 20,),
                ),

              ],
            ),


            const SizedBox(
              height: 8,
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
                          inIncomeState = true;
                          setState(() {});
                        },
                        child: Padding(
                          padding: inIncomeState
                              ? EdgeInsets.all(3.0)
                              : EdgeInsets.all(0),
                          child: Container(
                            height: inIncomeState ? 30 : 35,
                            decoration: BoxDecoration(
                                color: inIncomeState
                                    ? AppData.defaultColors.powderBlue
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(2)),
                            child:  Center(
                                child: Text(
                                    'הזמנות פעילות ',
                                    style: inIncomeState ? AppFonts.heeboBold.copyWith(
                                      color: AppData.defaultColors.cobaltFour,
                                      fontSize: 14.0,
                                      height: 1.9,
                                    ) : AppFonts.heeboNormal.withParams(
                                      color: AppData.defaultColors.greyishBrown,
                                      fontSize: 14.0,
                                    )
                                )),
                          ),
                        ),
                      )),
                  Expanded(
                      child: GestureDetector(
                        onTap: () {
                          inIncomeState = false;
                          setState(() {});
                        },
                        child: Container(
                          height: !inIncomeState ? 30 : 35,
                          decoration: BoxDecoration(
                              color: !inIncomeState
                                  ? AppData.defaultColors.powderBlue
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(2)),

                          child:  Center(child: Text('כל ההזמנות',
                            style: !inIncomeState ? AppFonts.heeboBold.copyWith(
                              color: AppData.defaultColors.cobaltFour,
                              fontSize: 14.0,
                              height: 1.9,
                            ) : AppFonts.heeboNormal.withParams(
                              color: AppData.defaultColors.greyishBrown,
                              fontSize: 14.0,
                            ),
                          )),
                        ),
                      )),
                ],
              ),
            ),

            // All orders/active orders
            if (inIncomeState) AllOrders(),
            if (!inIncomeState) AllOrders(),

          ],
        ),
      ),
    );
  }
}
