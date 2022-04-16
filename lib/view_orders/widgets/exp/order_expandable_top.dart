
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../config/app_data.dart';
import '../../../config/app_fonts.dart';


class OrderExpandableTop extends StatelessWidget {
  bool isOpen;
  OrderExpandableTop(this.isOpen,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 5,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
            ),
            padding: const EdgeInsets.symmetric(horizontal: 8),
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [


                Text('21.1.21', style: AppFonts.heeboNormal.copyWith(
                  fontSize: 14.0,
                  height: 1.95,
                  color: AppData.defaultColors.cobalt,
                ),),

                Text('#34353 הזמנה',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,
                    color: AppData.defaultColors.cobalt
                ),),

                Text('345.9', style: AppFonts.heeboMedium.copyWith(
                  fontSize: 14.0,

                  color: AppData.defaultColors.cobalt,
                ),),

                //FrontEndConfigs.kText

                Text('ההזמנה התקבלה', style: AppFonts.heeboMedium.copyWith(
                  fontSize: 14.0,
                  color: AppData.defaultColors.azul,
                ),),

                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: RotatedBox(
                    child: ImageIcon(AssetImage("assets/images/chevron.png",), size: 10,),

                    quarterTurns: isOpen ? 1 : 2,

                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }

}