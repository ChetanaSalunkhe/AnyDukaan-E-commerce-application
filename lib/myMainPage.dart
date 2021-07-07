import 'package:anydukaan/consumer/itemsListing.dart';
import 'package:anydukaan/customdesigns/mainSearchDesign.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'consumer/homepage_gothrough.dart';
import 'consumer/shoplisting.dart';
import 'splashScreen.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  //MySplashScreenState createState() => MySplashScreenState();
  HomePageState createState() => HomePageState();   //home page
  //ShopListing createState() => ShopListing();       //shop/restaurants list
  //ItemsListing createState() => ItemsListing();
  //MainSearchDesign createState() => MainSearchDesign();
}
