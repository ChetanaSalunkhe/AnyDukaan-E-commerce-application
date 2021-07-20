import 'package:anydukaan/merchant/dashboardMerchant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'consumer/homepage_gothrough.dart';
import 'splashScreen.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  //HomePageState createState() => HomePageState();   //home page consumer
  Dashboard createState() => Dashboard();   //home page merchant
}
