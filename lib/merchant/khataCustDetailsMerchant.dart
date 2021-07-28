import 'package:anydukaan/consumer/myOrders.dart';
import 'package:anydukaan/customdesigns/customButtons.dart';
import 'package:anydukaan/customdesigns/myCustomAppBar.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/material.dart';

int listSize=0;
class KhataCustDetails extends State{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: CustomColors.background_lightblue,
      appBar: CustomAppBarWithoutSearch('Khata Customer Details',true,true,'','assets/chat_bubble.png'),
      body:SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 16,bottom: 60,left: 16,right: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Venkatesh K Shantanu',style: CustomStyle.blackBoldMerch_16,textAlign: TextAlign.start,),
              SizedBox(height: 10,),
              Text(CustomString.officeadr,style: CustomStyle.subTitle_merch,textAlign: TextAlign.justify,
                maxLines: 5,softWrap: true,overflow: TextOverflow.fade,),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomStyle.getIcons(Icons.calendar_today, 16, CustomColors.colorPrimaryBlue),
                  SizedBox(width: 6,),
                  Text('MAR 2020',style: CustomStyle.blackBoldMerch_14,textAlign: TextAlign.start,),
                ],
              ),
              SizedBox(height: 10,),
              GetRecordsList(),
            ],
          ),
        ),
      ),
      bottomSheet: InkWell(
        onTap: (){
          /*call API to add delivery agent to server*/
        },
        child: BtnContinue('(₹ 1200) Request Payment', context, 'AddAgent'),
      ),
    );
  }
}

ListView GetRecordsList(){
  return ListView.builder(
      shrinkWrap: true,
      itemCount: 5,
      itemBuilder: (BuildContext context, int index){
        return Container(
          margin: EdgeInsets.only(top: 10,),
          child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child:Padding(
                padding: EdgeInsets.only(bottom: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 16,top: 16,right: 16),
                      child:CustomStyle.getImageBanner('assets/milk.png', 60, 60, BoxFit.cover),),
                    Flexible(
                      flex: 1,
                        fit: FlexFit.tight,
                        child:Padding(
                          padding: EdgeInsets.only(top: 16,right: 16),
                          child:  Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Flexible(
                                      flex: 8,
                                      fit: FlexFit.tight,
                                      child: Text('Govardhan Milk',style: CustomStyle.blackBoldMerch_14,textAlign: TextAlign.start,)),
                                  Flexible(
                                      flex: 2,
                                      fit: FlexFit.tight,
                                      child: Text('₹ 27',style: CustomStyle.blackBoldMerch_14,textAlign: TextAlign.end,)),
                                ],
                              ),
                              SizedBox(height: 6,),
                              Text('250 g',style: CustomStyle.subTitle_merch,textAlign: TextAlign.start,),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('23 Mar 2021',style: CustomStyle.blackNormalMerch_12,textAlign: TextAlign.end,)
                                ],
                              ),
                            ],
                          ),
                        )),

                  ],
                ),
              )
          ),
        );
      });
}
