import 'package:flutter/material.dart';

import '../../../../config/app_data.dart';


class CustomImageRow extends StatelessWidget {
  CustomImageRow(this.images);

  var images = [];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        for (var i = 0; i < 4; i++)...{
          Container(
            height: 75,
            width: 65,

            margin: EdgeInsets.only(right: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: AppData.defaultColors.clearBlueThree, width: 2),
              image: DecorationImage(
                image: AssetImage('assets/images/chair.jpg'),
                fit: BoxFit.fill,),
              ),

          ),

          if (i == 3)...{
            Container(
              height: 20,
              width: 20,
              padding: EdgeInsets.all(2),
              margin: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.blue,
              ),

              child: Center(child: Text("2+", style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold),)),
            )
          }
        }

      ],
    );
  }
}
