import 'package:anydukaan/consumer/itemsListing.dart';
import 'package:anydukaan/consumer/productDetails.dart';
import 'package:anydukaan/consumer/shopDetails.dart';
import 'package:anydukaan/consumer/shoplisting.dart';
import 'package:anydukaan/onboardingScreens/selectLanguage.dart';
import 'package:anydukaan/onboardingScreens/walkThrough.dart';
import 'package:flutter/material.dart';

import 'mainSearchDesign.dart';

class SecondRoute extends StatefulWidget {
  String callFrom="";
  SecondRoute({Key key,this.callFrom}):super(key: key);

  @override
  State<StatefulWidget> createState() {
    if(callFrom == 'Shops'){
      //content of shops
      return ShopListing();
    }else if(callFrom == 'Products'){
      return ItemsListing();
    }else if(callFrom == 'SearchBar'){
      return MainSearchDesign();
    }else if(callFrom == 'HomeShop'){
      return ShopDetails();
    }else if(callFrom == 'HomeProduct'){
      return ProductDetails();
    }else if(callFrom == 'WalkThrough'){
      return WalkThroughScreen();
    }
  }
}