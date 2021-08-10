import 'package:anydukaan/customdesigns/bottombardesign.dart';
import 'package:anydukaan/customdesigns/deliveryTimelineTile.dart';
import 'package:anydukaan/customdesigns/myCustomAppBar.dart';
import 'package:anydukaan/customdesigns/ordFeedbackTemplate.dart';
import 'package:anydukaan/customdesigns/ordSumaryTemplate.dart';
import 'package:anydukaan/customdesigns/orderCardTemplate.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

final List<String> entries = <String>["Restaurant","Grocery",];

class MyOrderDetails extends State{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: CustomColors.background_all,
      appBar: CustomAppBarWithoutSearch('Order Details',true,true,'assets/share1.png','assets/chat_bubble.png'),
      body: SingleChildScrollView(
        clipBehavior: Clip.antiAlias,
        scrollDirection: Axis.vertical,
        child: Container(
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                      height: 47,
                      width: MediaQuery.of(context).size.width,
                      color: CustomColors.white,
                      child: Card(
                        elevation: 2,
                        margin: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 16,top: 19),
                          child: Text('Order No. 02BNHDJ7324',style: CustomStyle.subTitleBlack,textAlign: TextAlign.start,),),
                      )
                  ),
                  Container(
                      height: 180,
                      width: MediaQuery.of(context).size.width,
                      color: CustomColors.background_lightblue,
                      child: Card(
                        elevation: 2,
                        margin: EdgeInsets.zero,
                        color: CustomColors.background_lightblue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 16,top: 10),
                          child: DeliveryTimeline(),),
                      )
                  ),
                  Container(
                    //height: MediaQuery.of(context).size.height,
                      color: CustomColors.white,
                      margin: EdgeInsets.only(top: 20),
                      child: Card(
                          elevation: 2,
                          margin: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(0))
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 16),
                            child: CallTemplate(),
                          )
                      )
                  ),
                  Container(
                    //height: MediaQuery.of(context).size.height,
                      child: Card(
                          elevation: 2,
                          margin: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(0))
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 16,top: 16),
                            child: OrdSummaryTemplate(),
                          )
                      )
                  ),
                  Container(
                    //  height: MediaQuery.of(context).size.height,
                      child: Card(
                          elevation: 2,
                          margin: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(0))
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 16),
                            child: OrdFeedbackTemplate(),
                          )
                      )
                  ),
                ],
              )
            ],
          ),
        )
      ),
      bottomSheet: CustomBottomBar(),
    );
  }
}
class CallTemplate extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return OrdCardTemplate(entries: entries,checkBoxval: false,);
  }

}


