import 'package:flutter/material.dart';

import 'layout/home_body.dart';
import 'layout/widget/custom_app_bar.dart';


class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xfff1f9fb),Color(0xfff4fdfa),])),
      child:  Scaffold(
        backgroundColor: Colors.transparent,
    appBar: CustomAppBar(context, 'หน้าจอหลัก'),
       body: const HomeViewBody(),
      ),
    );
  }
}
