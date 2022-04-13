import 'package:flutter/material.dart';
import 'package:flutter_screens/screen1/Screen1.dart';
import 'package:flutter_screens/screen1/presentation/views/home_view/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const HomeView(),
    );
  }
}

