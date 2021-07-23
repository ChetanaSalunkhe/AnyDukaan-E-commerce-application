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
import 'package:anydukaan/merchant/homeScreenMerchant.dart';
import 'package:anydukaan/merchant/myOrderDetailPageMerchant.dart';
import 'package:anydukaan/merchant/myOrdersMerchant.dart';
import 'package:anydukaan/merchant/revenueStatusMerchant.dart';
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
        //consumer orders
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

        /******************** Merchant Calls ***********************************/
      case 'DashBoardMerch':
        return RevenueStatusMerchant();
        break;
      case 'OrdDetailPage':
        return MyOrderDetailsPageMerchant();
        break;
      case 'Drawer_HomeMerch':
        return HomeMerchant();
        break;
      case 'Drawer_SetupMerch':
        //return MyOrdersMerchant();
        break;
      case 'Drawer_MyOrdersMerch':
        return MyOrdersMerchant();
        break;
      case 'Drawer_KhataMerch':
        //return MyOrdersMerchant();
        break;
      case 'Drawer_PromotionsMerch':
        //return MyOrdersMerchant();
        break;
      case 'Drawer_SupportMerch':
        //return MyOrdersMerchant();
        break;
      case 'Drawer_PaymentMerch':
        //return MyOrdersMerchant();
        break;
      case 'Drawer_SettingsMerch':
       // return MyOrdersMerchant();
        break;
      case 'Drawer_LogoutMerch':
        //return MyOrdersMerchant();
        break;
      case 'Drawer_MyProdMerch':
        //return MyOrdersMerchant();
        break;
      case 'Drawer_DeliverySetupMerch':
        //return MyOrdersMerchant();
        break;
      case 'Drawer_PackagingMerch':
        //return MyOrdersMerchant();
        break;
      case 'Drawer_ApplyOffersMerch':
        //return MyOrdersMerchant();
        break;

    }
  }
}