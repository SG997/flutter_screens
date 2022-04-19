import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screens/orders/orders_page.dart';
import 'package:flutter_screens/view_orders/income_orders_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      localizationsDelegates: const [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],

      supportedLocales: const [
        Locale("fa", "IR"),
      ],

      locale: const Locale("fa", "IR"),


      title: 'Flutter Demo',

      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: OrdersPage(),
      ),
    );
  }
}

