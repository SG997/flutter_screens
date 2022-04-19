import 'package:flutter/material.dart';
import 'package:flutter_screens/config/app_data.dart';
import 'package:flutter_screens/config/app_fonts.dart';

class OrderRow extends StatefulWidget {
  String imageUrl;
  String headline;
  String secondHeadLine;
  String amount;
  String areaNumber;

  OrderRow(
      {required this.imageUrl,
      required this.headline,
      required this.secondHeadLine,
      required this.amount,
      required this.areaNumber});

  @override
  State<OrderRow> createState() => _OrderRowState();
}

class _OrderRowState extends State<OrderRow> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 19.0,vertical: 0),
      child: Column(
        children: [
          SizedBox(height: 2,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 70,
                    width: 60,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(widget.imageUrl),fit: BoxFit.cover
                      ),
                      border: Border.all(color: AppData.defaultColors.clearBlue,width: 1.5),
                      color: AppData.defaultColors.blue,
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.headline,
                          style: AppFonts.heeboMedium.copyWith(
                            fontSize: 14,
                            color: AppData.defaultColors.accent,
                          ),
                        ),
                        Text(
                          widget.secondHeadLine,
                          style: AppFonts.heeboNormal.copyWith(
                            fontSize: 14,
                            color: AppData.defaultColors.accent,
                          ),
                        ),
                        Text(
                          widget.amount,
                          style: AppFonts.heeboNormal.copyWith(
                            fontSize: 12,
                            color: AppData.defaultColors.greyishBrownTwo,
                          ),
                        ),
                        Text(
                          widget.areaNumber,
                          style: AppFonts.heeboMedium.copyWith(
                            fontSize: 12,
                            color: AppData.defaultColors.blue,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 14,
                    backgroundColor: AppData.defaultColors.green,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 12,
                      child:  Icon(
                        Icons.check,
                        color: AppData.defaultColors.green,
                      ),
                    ),
                  ),

                  const SizedBox(
                    width: 10,
                  ),
                  const CircleAvatar(
                    radius: 14,
                    backgroundColor: Colors.red,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 12,
                      child: Icon(Icons.close_sharp,color: Colors.red,),
                    ),
                  )
                ],
              )
            ],
          ),
          SizedBox(height: 2,),
          Divider()
        ],
      ),
    );
  }
}
