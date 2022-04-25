import 'package:flutter/material.dart';
import 'package:flutter_screens/config/app_data.dart';
import 'package:flutter_screens/config/app_fonts.dart';

class ListWidget extends StatelessWidget {
  String imageUrl;
  String headline;
  String secondHeadLine;
  String thirdHeadLine;
  String amount;

  ListWidget(
      {required this.imageUrl,
      required this.headline,
      required this.secondHeadLine,
      required this.amount,
      required this.thirdHeadLine});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 0),
      child: Column(
        children: [
          const SizedBox(
            height: 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 70,
                    width: 60,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(imageUrl), fit: BoxFit.cover),
                      border: Border.all(
                          color: AppData.defaultColors.clearBlue, width: 1.5),
                      color: AppData.defaultColors.blue,
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 18.0, vertical: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          headline,
                          style: AppFonts.heeboMedium.copyWith(
                            fontSize: 14,
                            color: AppData.defaultColors.cobalt,
                          ),
                        ),
                        Text(
                          secondHeadLine,
                          style: AppFonts.heeboNormal.copyWith(
                            fontSize: 12,
                            color: AppData.defaultColors.accent,
                          ),
                        ),
                        Text(
                          thirdHeadLine,
                          style: AppFonts.heeboNormal.copyWith(
                            fontSize: 12,
                            color: AppData.defaultColors.greyishBrownTwo,
                          ),
                        ),
                        Text(
                          amount,
                          style: AppFonts.heeboBold.copyWith(
                            fontSize: 16,
                            color: AppData.defaultColors.blue,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Container(
                height: 50,
                width: 1,
                color: Colors.grey.withOpacity(0.2),
              ),
              Row(
                children: [
                  Text(
                    'מוד: ',
                    style: AppFonts.heeboNormal.copyWith(fontSize: 12),
                  ),
                  Text(
                    ' 1 ',
                    style: AppFonts.heeboNormal.copyWith(fontSize: 12),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          const Divider()
        ],
      ),
    );
  }
}
