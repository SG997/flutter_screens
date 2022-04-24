import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screens/config/app_data.dart';
import 'package:flutter_screens/config/app_fonts.dart';
import 'package:flutter_screens/orders/widgets/custom_dialog.dart';
import 'package:flutter_screens/orders/widgets/left_to_right.dart';
import 'package:flutter_screens/orders/widgets/right_to_left.dart';
import 'package:flutter_screens/providers/counter_container_provider.dart';
import 'package:provider/provider.dart';

class OrderRow extends StatefulWidget {
  String imageUrl;
  String headline;
  String secondHeadLine;
  String amount;
  String areaNumber;
  bool isSelected;
  bool isCounterSelected;
  int index;

  OrderRow(
      {required this.imageUrl,
      required this.headline,
      required this.isCounterSelected,
      required this.isSelected,
      required this.secondHeadLine,
      required this.amount,
      required this.index,
      required this.areaNumber});

  @override
  State<OrderRow> createState() => _OrderRowState();
}

class _OrderRowState extends State<OrderRow>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  );
  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: Offset.zero,
    end: const Offset(1.5, 0.0),
  ).animate(CurvedAnimation(
    parent: _controller,
    curve: Curves.elasticIn,
  ));

  List<int> selectedIndex = [];

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  int number = 1;

  @override
  Widget build(BuildContext context) {
    var counterState = Provider.of<CounterStateProvider>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 0),
      child: Stack(
        children: [
          _getBody(),
          RightToLeft(widget.isCounterSelected),
          if (counterState.getCounterValue() == true &&
              counterState.getSelectedIndex() == widget.index)
            _moreThenZero(),
          if (counterState.getCounterZero() == true &&
              counterState.getSelectedIndex() == widget.index)
            _getZeroCount(),
          if (selectedIndex.contains(widget.index)) _onCheckPress(),
          LeftToRight(widget.isSelected)
        ],
      ),
    );
  }

  _getZeroCount() {
    return GestureDetector(
      onTap: () {
        selectedIndex.remove(widget.index);
        setState(() {});
      },
      child: Container(
        height: 100,
        width: MediaQuery.of(context).size.width,
        color: const Color(0xffF590C7).withOpacity(0.9),
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'מבחן',
                  style: AppFonts.heeboMedium.copyWith(
                      fontSize: 14, color: AppData.defaultColors.cobalt),
                ),
                const SizedBox(width: 80,),
                const Icon(
                 CupertinoIcons.clear_circled_solid,
                  color: Colors.red,
                  size: 30,
                ),
                const SizedBox(width: 30,),
                Text(
                  'מבחןמבחןמבחן  ',
                  style: AppFonts.heeboMedium.copyWith(
                      fontSize: 14, color: AppData.defaultColors.red),
                ),
              ],
            )
        ),
      ),
    );
  }

  _onCheckPress() {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      color: const Color(0xffC9F7D7).withOpacity(0.9),
      child: GestureDetector(
        onTap: () {
          selectedIndex.remove(widget.index);
          setState(() {});
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'שלום',
                style: AppFonts.heeboMedium.copyWith(
                    fontSize: 14, color: AppData.defaultColors.cobalt),
              ),
              const SizedBox(
                width: 90,
              ),
              Icon(
                Icons.check_circle_outline,
                size: 30,
                color: AppData.defaultColors.cobalt,
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                'זה מבחן',
                style: AppFonts.heeboMedium.copyWith(
                    fontSize: 14, color: AppData.defaultColors.cobalt),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _moreThenZero() {
    return GestureDetector(
      onTap: () {
        selectedIndex.remove(widget.index);
        setState(() {});
      },
      child: Container(
        height: 100,
        width: MediaQuery.of(context).size.width,
        color: const Color(0xffF6B0A9).withOpacity(0.9),
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'מבחן',
                  style: AppFonts.heeboMedium.copyWith(
                      fontSize: 14, color: AppData.defaultColors.cobalt),
                ),
                Icon(
                  Icons.info_outlined,
                  color: AppData.defaultColors.cobalt,
                ),
                Text(
                  'מבחן 2/3 ',
                  style: AppFonts.heeboMedium.copyWith(
                      fontSize: 14, color: AppData.defaultColors.cobalt),
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        number++;
                        setState(() {});
                      },
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: AppData.defaultColors.cobalt),
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      number.toString(),
                      style: AppFonts.heeboBold.copyWith(
                          fontSize: 22, color: AppData.defaultColors.cobalt),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        number--;
                        setState(() {});
                      },
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: AppData.defaultColors.cobalt),
                        child: const Icon(
                          CupertinoIcons.minus,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            )),
      ),
    );
  }

  _getBody() {
    var counterState = Provider.of<CounterStateProvider>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 19.0, vertical: 0),
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
                          image: AssetImage(widget.imageUrl),
                          fit: BoxFit.cover),
                      border: Border.all(
                          color: AppData.defaultColors.clearBlue, width: 1.5),
                      color: AppData.defaultColors.blue,
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12.0, vertical: 8),
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
                  GestureDetector(
                    onTap: () {
                      if (selectedIndex.contains(widget.index)) {
                      } else {
                        selectedIndex.add(widget.index);
                      }
                      setState(() {});
                    },
                    child: CircleAvatar(
                      radius: 14,
                      backgroundColor: AppData.defaultColors.green,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 12,
                        child: Icon(
                          Icons.check,
                          color: AppData.defaultColors.green,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      counterState.saveSelectedIndex(widget.index);
                      counterState.setCounterValue(false);
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return Dialog(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              elevation: 0,
                              child: contentBox(context),
                            );
                          });
                    },
                    child: const CircleAvatar(
                      radius: 14,
                      backgroundColor: Colors.red,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 12,
                        child: Icon(
                          Icons.close_sharp,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  )
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
