import 'package:anydukaan/consumer/productDetails.dart';
import 'package:anydukaan/consumer/shopDetails.dart';
import 'package:anydukaan/consumer/shoplisting.dart';
import 'package:anydukaan/consumer/testThemes.dart';
import 'package:flutter/material.dart';

class ButtonClickActions extends StatefulWidget{
  final String clickAction;
  ButtonClickActions({this.clickAction});

  static callActions(String clickAction){
    switch (clickAction){
      case "ViewCart":
        return ShopDetails();
        break;

      case "Checkout":
        ProductDetails();
        break;

      case "PlaceOrder":
        TestThemes();
        break;

    }
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}