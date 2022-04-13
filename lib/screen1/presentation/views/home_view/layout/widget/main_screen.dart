
import 'package:flutter/material.dart';
import 'package:flutter_screens/screen1/presentation/views/home_view/layout/widget/authTextField.dart';
import 'package:flutter_screens/screen1/presentation/views/home_view/layout/widget/custom_app_button.dart';
import 'package:flutter_screens/screen1/presentation/views/home_view/layout/widget/text_icon_row.dart';

import '../../../../../config/front_end_config.dart';
import 'custom_image_row.dart';
import 'list_view_card.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                        color: FrontEndConfigs.kAppBaseColor,
                        borderRadius: BorderRadius.circular(5)),
                    child: const Icon(
                      Icons.qr_code_scanner,
                      color: Colors.white,
                      size: 16,
                    )),
                const SizedBox(
                  width: 20,
                ),
                SizedBox(
                  height: 50,
                  width: MediaQuery.of(context).size.width / 1.29,
                  child: AuthTextField(
                    validator: (val) {},
                    controller: controller,
                    onPwdTap: () {},
                    topText: 'ค้นหาที่นี่สิ่งใดก็ได้',
                  ),
                ),
              ],
            ),
          ),
         const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Align(
                  child: Text('แอบมองไปด้วยกันอีก',style:  TextStyle(
                    fontSize: 14,
                    color: FrontEndConfigs.kAppBaseColor
                  ),),
                  alignment: Alignment.topRight,
                ),
              const SizedBox(height: 10,),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(height: 15,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Icon(
                              Icons.arrow_back_ios_sharp,
                              size: 12,
                            ),
                            Text('แอบมอ',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,
                                color: FrontEndConfigs.kText
                            ),),
                            Text('345.9',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500,
                                color: FrontEndConfigs.kText
                            ),),
                            Text('3343456 บมอ',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500,
                                color: FrontEndConfigs.kText
                            ),),
                            Text('21.1.21',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500,
                                color: FrontEndConfigs.kText
                            ),),

                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const CustomImageRow(),
                        const SizedBox(height: 10,),
                        TextIconRow('ขอโทษ '),
                        const SizedBox(height: 8,),
                        TextIconRow(' แพงมาก '),
                        const SizedBox(height: 8,),
                        TextIconRow('ครับ  '),
                        const SizedBox(height: 10,),
                        Align(
                          alignment: Alignment.topRight,
                          child: CustomAppButton(' ขอบคุณ', () {}),
                        ),
                      const SizedBox(height: 20,)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10,),
          SizedBox(
            height: MediaQuery.of(context).size.height / 2.5,
            child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 5,
                itemBuilder: (context, i) {
                  return const Padding(
                    padding: EdgeInsets.symmetric(vertical: 4.0),
                    child: ListViewCard(),
                  );
                }),
          )
        ],
      ),
    );
  }
}
