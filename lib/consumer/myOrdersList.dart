import 'package:anydukaan/customdesigns/bottomSheetDialogDesign.dart';
import 'package:anydukaan/customdesigns/bottombardesign.dart';
import 'package:anydukaan/customdesigns/customButtons.dart';
import 'package:anydukaan/customdesigns/myCustomAppBar.dart';
import 'package:anydukaan/customdesigns/myCustomAppBar2.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:anydukaan/valueresources/dimens.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

final List<String> entries = <String>["Restaurant","Grocery","Vegetables"];

class MyOrdersList extends State {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.background_all,
      appBar: CustomAppBarWithSearch(title:'Orders',searchHint:'Search here...',isLeadingVisible:true,isActionVisible:false,img: 'assets/audio_search.png'),
      body: SingleChildScrollView(
          clipBehavior: Clip.antiAlias,
          scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 37,left: 16),
              child: Text('Active Orders',style: CustomStyle.bottombarTitleText,textAlign: TextAlign.start,),),

            Container(
              color: CustomColors.background_lightblue,
              margin: EdgeInsets.only(top: 8),
              //height: MediaQuery.of(context).size.height,
                child: OrderCardDesign(ordCount: '03 Products',ordSTatus: 'In Progress',shop: 'Rajesh Kirana Store',
                    amt:'₹ 22',isOrdBtnVisible: false,ordBtnTitle: 'Track Order')),

            Padding(
                padding: EdgeInsets.only(bottom: 20,left: 16,top: 20),
                child: Text('Past Orders',style: CustomStyle.blackBoldlCust_12,textAlign: TextAlign.start,),),

            Container(
                color: CustomColors.white,
                height: MediaQuery.of(context).size.height,
                child: OrderCardDesign(ordCount: '07 Products',ordSTatus: 'On the Way',shop: 'Shiv Krishna Dairy',
                    amt:'₹ 125',isOrdBtnVisible: true,ordBtnTitle: 'Track Order')),
          ],
        ),
      ),
      bottomSheet: CustomBottomBar(),
    );
  }
}

class OrderCardDesign extends StatelessWidget{
  String ordCount="";
  String ordSTatus ="";
  String shop="";
  String amt="";
  bool isOrdBtnVisible=true;
  String ordBtnTitle="";

  OrderCardDesign({Key key,this.ordCount,this.ordSTatus,this.shop,this.amt,this.isOrdBtnVisible,this.ordBtnTitle});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: 3,
        itemBuilder: (BuildContext context, int index){
          return Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 16,right: 16,top: 16),
                child: Card(
                    color: CustomColors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(6))
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 15,right: 15,top: 10,bottom: 10),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Flexible(
                                      flex: 9,
                                      fit: FlexFit.tight,
                                      child: Text('$ordCount',style: CustomStyle.blackBoldlCust_14,)),
                                  Flexible(
                                      flex: 1,
                                      fit: FlexFit.tight,
                                      child: CustomStyle.getIcons(Icons.share,16,CustomColors.colorPrimaryBlue)),
                                ],
                              ),
                              SizedBox(height: 3,),
                              Row(
                                children: [
                                  Flexible(
                                      flex: 1,
                                      fit: FlexFit.tight,
                                      child: Text('$shop',style: CustomStyle.subTitle,)),
                                ],
                              ),
                              SizedBox(height: 10,),
                              Row(
                                children: [
                                  Flexible(
                                      flex: 1,
                                      fit: FlexFit.tight,
                                      child: Text('$amt',style: CustomStyle.blackBold16,textAlign: TextAlign.start,)),
                                  Flexible(
                                      flex: 1,
                                      fit: FlexFit.tight,
                                      child: Text('$ordSTatus',style: CustomStyle.greenText12,textAlign: TextAlign.end,)),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Visibility(
                            visible: isOrdBtnVisible,
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(6),
                                  bottomLeft: Radius.circular(6)
                              ),
                              child: Container(
                                  width: 328,
                                  color: CustomColors.background_lightblue,
                                  margin: EdgeInsets.zero,
                                  height: 38,
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 12),
                                    child: Text('$ordBtnTitle',style: CustomStyle.textOrange16,textAlign: TextAlign.center,),
                                  )
                              ),
                            )
                        ),
                      ],
                    )
                ),
              )

            ],
          );
        });
  }

}




