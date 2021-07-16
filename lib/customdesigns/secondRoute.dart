import 'package:anydukaan/consumer/bookTable.dart';
import 'package:anydukaan/consumer/itemsListing.dart';
import 'package:anydukaan/consumer/myCart.dart';
import 'package:anydukaan/consumer/myOrderDetails.dart';
import 'package:anydukaan/consumer/myOrders.dart';
import 'package:anydukaan/consumer/myOrdersList.dart';
import 'package:anydukaan/consumer/myTableBookings.dart';
import 'package:anydukaan/consumer/productDetails.dart';
import 'package:anydukaan/consumer/returnProducts.dart';
import 'package:anydukaan/consumer/shopDetails.dart';
import 'package:anydukaan/consumer/shoplisting.dart';
import 'package:anydukaan/consumer/testThemes.dart';
import 'package:anydukaan/customdesigns/merchantReview.dart';
import 'package:anydukaan/customdesigns/raiseComplaint.dart';
import 'package:anydukaan/onboardingScreens/selectLanguage.dart';
import 'package:anydukaan/onboardingScreens/walkThrough.dart';
import 'package:flutter/material.dart';

import 'mainSearchDesign.dart';

class SecondRoute extends StatefulWidget {
  String callFrom="";
  SecondRoute({Key key,this.callFrom}):super(key: key);

  @override
  State<StatefulWidget> createState() {
    switch(callFrom){
      case 'Shops':
        return ShopListing();
        break;
      case 'Products':
        return ItemsListing();
        break;
      case 'SearchBar':
        return MainSearchDesign();
        break;
      case 'HomeShop':
        return ShopDetails();
        //return TestThemes();
        break;
      case 'HomeProduct':
        return ProductDetails();
        break;
      case 'WalkThrough':
        return WalkThroughScreen();
        break;
      case 'BottomHome':
        break;
      case 'BottomCart':
        return MyCart();
        break;
      case 'BottomOrders':
        //return MyOrders();
        //return MyOrdersList();
        //return MyOrderDetails();
        //return ReturnProduct();
        //return MerchantReview();
        return BookTable();
        break;
      case 'BottomAccount':
        break;
      case 'BookTable':
        //return MyTableBookings();
        return RaiseComplaint();
        break;

    }
  }
}