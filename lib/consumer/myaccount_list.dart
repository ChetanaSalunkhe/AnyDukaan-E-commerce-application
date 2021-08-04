import 'package:anydukaan/customdesigns/bottombardesign.dart';
import 'package:anydukaan/customdesigns/myAccountCards.dart';
import 'package:anydukaan/customdesigns/myCustomAppBar.dart';
import 'package:anydukaan/customdesigns/profileAppBar.dart';
import 'package:anydukaan/customdesigns/secondRoute.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAccount extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:ProfileAppBarCommon('Mukesh Kumar','View Profile','assets/dummyboyimg.jpg'),
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
                  child:getmyAccountCard(Icons.home,'My Address',Icons.arrow_forward),
                ),
                SizedBox(height: 3,),
                InkWell(
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>SecondRoute(callFrom: 'Acc_MyKhata',)));
                  },
                  child:getmyAccountCard(Icons.card_travel_outlined,'My Khata',Icons.arrow_forward),
                ),
                SizedBox(height: 3,),
                InkWell(
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>SecondRoute(callFrom: 'Acc_MyItems',)));
                  },
                  child:getmyAccountCard(Icons.shopping_cart,'My Items',Icons.arrow_forward),
                ),
                SizedBox(height: 3,),
                InkWell(
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>SecondRoute(callFrom: 'Acc_MyTableBooking',)));
                  },
                  child: getmyAccountCard(Icons.flag_outlined,'My Table Bookings',Icons.arrow_forward),
                ),
                SizedBox(height: 3,),
                InkWell(
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>SecondRoute(callFrom: 'Acc_Preferences',)));
                  },
                  child:getmyAccountCard(Icons.settings,'Preferences',Icons.arrow_forward),
                ),
                SizedBox(height: 3,),
                InkWell(
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>SecondRoute(callFrom: 'Acc_Complaint',)));
                  },
                  child: getmyAccountCard(Icons.error_outline,'Raise a Complaint',Icons.arrow_forward),
                ),
                SizedBox(height: 3,),
                InkWell(
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>SecondRoute(callFrom: 'Acc_ShareApp',)));
                  },
                  child: getmyAccountCard(Icons.share,'Share App',Icons.arrow_forward),
                ),
            ],

            ),
          ),
        ),
    );
  }
}