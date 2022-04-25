import 'package:flutter/material.dart';
import 'package:flutter_screens/screen3/widgets/list_widget.dart';

class ListBodyWidget extends StatelessWidget {
  const ListBodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height/1.5,
      color: const Color(0xffF8F9F8),
      child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 4,
          itemBuilder: (context, i) {
            return ListWidget(
              imageUrl: 'assets/images/chair.jpg',
              headline: 'זו הכותרת',
              secondHeadLine: 'זה כותר של 2 שניות',
              thirdHeadLine: 'כותרת שלישית',
              amount: '200 r',
            );
          }),
    );
  }
}
