import 'package:anydukaan/customdesigns/bottombardesign.dart';
import 'package:anydukaan/customdesigns/myAccountCards.dart';
import 'package:anydukaan/customdesigns/myCustomAppBar.dart';
import 'package:anydukaan/customdesigns/profileAppBar.dart';
import 'package:anydukaan/customdesigns/secondRoute.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAccount extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:ProfileAppBarCommon('Mukesh Kumar',CustomString.viewProf,'assets/dummyboyimg.jpg'),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(left: 16,right: 16,top: 16),
            color: CustomColors.background_lightblue,

            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>SecondRoute(callFrom: 'Acc_MyAddress',)));
                  },
                  child:getmyAccountCard(Icons.home,CustomString.myAddr,Icons.arrow_forward),
                ),
                SizedBox(height: 3,),
                InkWell(
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>SecondRoute(callFrom: 'Acc_MyKhata',)));
                  },
                  child:getmyAccountCard(Icons.card_travel_outlined,CustomString.myKhata,Icons.arrow_forward),
                ),
                SizedBox(height: 3,),
                InkWell(
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>SecondRoute(callFrom: 'Acc_MyItems',)));
                  },
                  child:getmyAccountCard(Icons.shopping_cart,CustomString.myItems,Icons.arrow_forward),
                ),
                SizedBox(height: 3,),
                InkWell(
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>SecondRoute(callFrom: 'Acc_MyTableBooking',)));
                  },
                  child: getmyAccountCard(Icons.flag_outlined,CustomString.myTableBookings,Icons.arrow_forward),
                ),
                SizedBox(height: 3,),
                InkWell(
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>SecondRoute(callFrom: 'Acc_Preferences',)));
                  },
                  child:getmyAccountCard(Icons.settings,CustomString.pref,Icons.arrow_forward),
                ),
                SizedBox(height: 3,),
                InkWell(
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>SecondRoute(callFrom: 'Acc_Complaint',)));
                  },
                  child: getmyAccountCard(Icons.error_outline,CustomString.raiseComplaint,Icons.arrow_forward),
                ),
                SizedBox(height: 3,),
                InkWell(
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>SecondRoute(callFrom: 'Acc_ShareApp',)));
                  },
                  child: getmyAccountCard(Icons.share,CustomString.shareApp,Icons.arrow_forward),
                ),
            ],

            ),
          ),
        ),
    );
  }
}