import 'package:anydukaan/customdesigns/invoiceDetailMerchant.dart';
import 'package:anydukaan/customdesigns/myCustomAppBar.dart';
import 'package:anydukaan/merchant/myProducts.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/material.dart';

class InvoiceDetails extends State {
  List<List<String>> entries;
  InvoiceDetails({Key key,this.entries});

  @override
  Widget build(BuildContext context) {
    return InvoiceDetails_(entries:entries);
  }
}

class InvoiceDetails_ extends StatelessWidget{
  List<List<String>> entries;
  InvoiceDetails_({Key key,this.entries});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: CustomColors.background_lightblue,
      appBar: CustomAppBarWithoutSearch(CustomString.invDtls,true,false,'assets/serch.png','assets/module_info.png'),
      body: SingleChildScrollView(
          clipBehavior: Clip.antiAlias,
          scrollDirection: Axis.vertical,
          child:Container(
            margin: EdgeInsets.only(top: 16,bottom: 16,left: 16,right: 16),
            child: Column(
              children: [
                GetInvoiceDetailCard(entries,false,true),

                SizedBox(height: 20,),
                Container(
                  margin: EdgeInsets.only(left: 16,right: 16),
                  child: GetCardTemplate(0,entries,CustomString.billGnrtOn,CustomString.billPaidOn,entries[0].elementAt(6),entries[0].elementAt(7)),
                ),
                SizedBox(height: 18,),
                Container(
                  margin: EdgeInsets.only(left: 16,right: 16),
                  child: GetCardTemplate(0,entries,CustomString.paidBy,CustomString.accID,entries[0].elementAt(8),entries[0].elementAt(9)),
                )

              ],
            ),
          )
      ),
    );
  }
}


Row GetCardTemplate(int index,List<List<String>>entries, String title1, String title2,String val1, String val2){
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Flexible(
        flex: 1,
          fit: FlexFit.tight,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('$title1',style: CustomStyle.blackBoldMerch_14,),
              SizedBox(height: 4,),
              Text('$val1',style: CustomStyle.blackNormalMerch_12,),
            ],
          )),
      Flexible(
          flex: 1,
          fit: FlexFit.tight,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('$title2',style: CustomStyle.blackBoldMerch_14,),
              SizedBox(height: 4,),
              Text('$val2',style: CustomStyle.blackNormalMerch_12,),
            ],
          )),
    ],
  );
}