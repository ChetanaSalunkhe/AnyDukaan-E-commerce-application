import 'package:anydukaan/customdesigns/customButtons.dart';
import 'package:anydukaan/customdesigns/customPageIndicator.dart';
import 'package:anydukaan/customdesigns/secondRoute.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/material.dart';

final List<List<String>> entries_cust = [
    ["assets/wk1.png",CustomString.wk1_title,CustomString.wk1_desc,],
    ["assets/wk_bookrest.png",CustomString.wk2_title,CustomString.wk2_desc,],
    ["assets/khataman.png",CustomString.wk3_title,CustomString.wk3_desc,],
  ];

final List<List<String>> entries_merch = [
  ["assets/wk_payment.png",CustomString.wk4_title,CustomString.wk4_desc,],
  ["assets/assignagents.png",CustomString.wk5_title,CustomString.wk5_desc,],
  ["assets/khataman.png",CustomString.wk3_title,CustomString.wk3_desc,],
];


class WalkThroughScreen extends State{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: CustomStyle.getGradientBackground(),  //gradient background to page
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //logo
              ClipRRect(
                child: Container(
                  margin: EdgeInsets.only(left: 140,right: 140,top: 30),
                  child: CustomStyle.getLogoImages('assets/adlogo.png', 80,55),
                ),
              ),
              SizedBox(height: 34,),
              AdvPages(iName: 'assets/wk1.png',width:220,height:220,boxHeight: 330,entries: entries_merch,),
              SizedBox(height: 10,),
              TextButton(
                  onPressed: (){
                   /*skip current image*/
              },
                child: Text('Skip',style: CustomStyle.primaryBtnTextOrange,),),
              SizedBox(height: 10,),
              InkWell(
                onTap: (){
                  /*go to login page*/
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>SecondRoute(callFrom: 'WalkThr',)));
                },
                child: BtnContinue(CustomString.gtstart, context, 'wkthr'),
              ),
            ],
          ),
        ),
      ),
    );
  }

}