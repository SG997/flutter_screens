import 'package:flutter/material.dart';

import '../../../../../config/front_end_config.dart';




CustomAppBar(
  BuildContext context,
  String title,
) {
  return AppBar(
    centerTitle: true,
    elevation: 0,
    backgroundColor: Colors.transparent,
    title: Text(
      title,
      style: const TextStyle(color: FrontEndConfigs.kAppBaseColor,fontSize: 14,fontWeight: FontWeight.bold),
    ),
    leading: const Padding(
      padding: EdgeInsets.all(18.0),
      child: ImageIcon(AssetImage("assets/images/menu.png",),color: Colors.black,size: 12,),
    ),
    actions: [
      Container(
        margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 13),
        width: 30,
        decoration: BoxDecoration(
          color: const Color(0xffc3d6e6),
          borderRadius: BorderRadius.circular(4),
        ),
        child: const Center(
          child: Icon(
            Icons.arrow_forward_ios,
            color: FrontEndConfigs.kAppBaseColor,
            size: 12,
          ),
        ),
      )
    ],
  );
}
