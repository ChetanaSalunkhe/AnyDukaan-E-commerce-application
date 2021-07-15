import 'package:anydukaan/valueresources/customColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'myMainPage.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AnyDukaan',
      theme: ThemeData(
        //custom themes
        //fontFamily: "OpenSans",
        primarySwatch: Colors.blue,
        backgroundColor: CustomColors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'AnyDukaan'),
    );
  }
}