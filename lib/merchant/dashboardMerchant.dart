import 'package:anydukaan/customdesigns/cardPendingOrders_Merchant.dart';
import 'package:anydukaan/customdesigns/customButtons.dart';
import 'package:anydukaan/customdesigns/dashboardCards.dart';
import 'package:anydukaan/customdesigns/drawerMerchant.dart';
import 'package:anydukaan/customdesigns/merchAppBar.dart';
import 'package:anydukaan/customdesigns/secondRoute.dart';
import 'package:anydukaan/customdesigns/textViewBtnMerchantCard.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

bool isWarningVisible=true;

class Dashboard extends State{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.background_lightblue,
      appBar: CustomAppBarWithoutSearch_Merchant('Home',true,true,'assets/help.png','assets/notification_merch.png',
          'assets/hamburger_menu.png'),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 12,),
                /*visibility handled as per merchants payment to vsl status*/
                Visibility(
                  visible: isWarningVisible,
                  child: Container(
                    height: 100,
                    color:CustomColors.redbackground_warning,
                    padding: EdgeInsets.all(16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(CustomString.warning_Merchant,style:CustomStyle.whiteBoldMerch_12,textAlign: TextAlign.center,
                        softWrap: true,overflow: TextOverflow.fade,maxLines: 4,),
                      ],
                    )
                  ),
                ),
                SizedBox(height: 12,),
                Container(
                  height: 290,
                  child: Column(
                    children: [
                      CustomStyle.getImageBanner('assets/dash_shop.png',360,158,BoxFit.cover),
                      SizedBox(height: 16,),
                      Padding(
                        padding: EdgeInsets.only(left: 16,right: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Flexible(
                              flex:7,
                              fit: FlexFit.tight,
                              child:  Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Naya Kirana Bazar',style: CustomStyle.blackBoldMerch_18,),
                                  SizedBox(height: 6,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text('3.5',style: CustomStyle.blackNormalMerch_12,),
                                      SizedBox(width: 6,),
                                      CustomStyle.getIcons(Icons.star, 13, CustomColors.coloryellow),
                                      SizedBox(width: 6,),
                                      Divider(
                                        thickness: 1,
                                        height: 10,
                                        color: CustomColors.blueborder,
                                      ),
                                      SizedBox(width: 6,),
                                      InkWell(
                                        onTap: (){
                                          Navigator.push(context,
                                          MaterialPageRoute(builder: (Context)=>SecondRoute(callFrom:'MReviews')));
                                        },
                                        child: Text('12 Reviews',style: CustomStyle.blueNormalMerch_12_underline,),
                                      ),
                                    ],
                                  ),

                                ],
                              ),),
                            Flexible(
                                flex:3,
                                fit: FlexFit.tight,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text('Total Revenue',style: CustomStyle.blackNormalMerch_12,),
                                    SizedBox(height: 6,),
                                    Text('₹ 1,280',style: CustomStyle.blackNormalMerch_24,),

                                  ],
                                )),
                          ],
                        ),
                      ),
                      SizedBox(height: 16,),
                      InkWell(
                        onTap: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context)=>SecondRoute(callFrom: 'DashBoardMerch',)));
                        },
                        child: BtnContinue('View Total Revenue',context,'DashBoardMerch'),
                        //child: Text('English',style: CustomStyle.btnTitleBlack16,textAlign: TextAlign.center,),
                      ),

                    ],
                  ),
                ),
                SizedBox(height: 30,),
                //horizontal scroll orders
                Container(
                  height: 150,
                  margin: EdgeInsets.only(left: 16,right: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Orders',style: CustomStyle.blackBoldMerch_18,textAlign: TextAlign.start,),
                      SizedBox(height: 16,),
                      SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Container(
                            color: Colors.transparent,
                            child: Row(
                              children: [
                                GetCardMerch('Pending',CustomColors.colorPrimaryOrange,0.12,'+ ₹880',true,false,'',CustomStyle.greenText12_merch),
                                SizedBox(width: 4,),
                                GetCardMerch('Undelivered',CustomColors.coloryellow,0.25,'₹1080',true,false,'',CustomStyle.blue_merch_normal_12),
                                SizedBox(width: 4,),
                                GetCardMerch('Refund',CustomColors.colorPrimaryOrange,0.12,'- ₹480',false,true,'02',CustomStyle.warningText_merch_12),
                                SizedBox(width: 4,),
                                GetCardMerch('Cancelled',CustomColors.colorPrimaryOrange,0.12,'- ₹480',false,true,'08',CustomStyle.warningText_merch_12),
                              ],
                            ),
                          )
                      )

                    ],
                  ),
                ),
                SizedBox(height: 12,),
                //pending orders list
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(14),
                      topLeft: Radius.circular(14)
                  ),
                  child: Container(
                    height: 335,
                    color: CustomColors.white,
                    child: Column(
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 16,right: 16,top: 18,bottom: 18),
                        child: TextViewBtnCard('Pending Orders (5)'),),
                        PendingOrdMerchList(),
                      ],
                    )
                  ),
                )

              ],
            ),
          ],
        ),
      ),
      drawer:GetDrawer(),
    );
  }
}

Container GetDrawer(){
  return Container(
      child: GetMerchantDrawer(),
  );
}