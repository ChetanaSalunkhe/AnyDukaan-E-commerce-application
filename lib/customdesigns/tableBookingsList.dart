import 'package:anydukaan/customdesigns/customButtons.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/material.dart';

class TableBookingsList extends StatelessWidget{
  List<String> entries;
  TableBookingsList({Key key,this.entries});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 3,
        itemBuilder: (BuildContext context, int index){
        return Container(
          height: 154,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Chetana Salunkhe',style: CustomStyle.blackBoldlCust_14,textAlign: TextAlign.start,),
                  SizedBox(height: 8,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        flex: 1,
                          fit: FlexFit.tight,
                          child:Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CustomStyle.getImageIcons('assets/chair.png', 16, CustomColors.colorPrimaryBlue,),
                                      SizedBox(width: 4,),
                                      Text('4 Guests',style: CustomStyle.blackNormalCust_14,textAlign: TextAlign.center,)
                                    ],
                                  ),
                                  SizedBox(height: 9,),
                                  Text('AC Room',style: CustomStyle.subTitle,textAlign: TextAlign.center,),
                                ],
                              )
                            ],
                          ),
                      ),
                      Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomStyle.getIcons(Icons.access_time, 16, CustomColors.colorPrimaryBlue),
                              SizedBox(width: 4,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text('17 Apr 2021',style: CustomStyle.blackNormalCust_14,textAlign: TextAlign.center,),
                                  SizedBox(height: 9,),
                                  Text('9:00 PM',style: CustomStyle.blackBoldlCust_12,textAlign: TextAlign.center,),
                                ],
                              )
                            ],
                          ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),

                  //set visibility true if booking status is request pending
                  Visibility(
                    visible: false,
                      child:  Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          //pending request text
                          Visibility(
                            visible: true,
                            child:  Flexible(
                              flex: 4,
                              fit: FlexFit.tight,
                              child:Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CustomStyle.getIconTextTemplate(Icons.error_outline,CustomColors.colorPrimaryOrange,'Request Pending',CustomStyle.orangeText12)
                                ],
                              ),
                            ),),
                          //red outline cancel request button
                          Visibility(
                            visible: true,
                            child: Flexible(
                              flex: 5,
                              fit: FlexFit.tight,
                              child:Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  BtnWithArrow('Cancel Request', context,144,38,false,CustomStyle.redOutline,CustomStyle.warningText,
                                      CustomColors.colorPrimaryOrange,Icons.arrow_forward),
                                ],
                              ),
                            ),),
                        ],
                      ),),
                  //set visibility true if booking is confirmed
                  Visibility(
                    visible: true,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          //confirmation text
                          Visibility(
                            visible: true,
                            child:  Flexible(
                              flex: 4,
                              fit: FlexFit.tight,
                              child:Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CustomStyle.getIconTextTemplate(Icons.check_circle_outline,CustomColors.greenlight,'Confirmation',CustomStyle.greenText12)
                                ],
                              ),
                            ),),
                          //orange preorder button
                          Visibility(
                            visible: true,
                            child: Flexible(
                              flex: 5,
                              fit: FlexFit.tight,
                              child:Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  BtnBlue_singletext_small('Pre-Order', context,144,40,CustomColors.colorPrimaryOrange),
                                ],
                              ),
                            ),),

                        ],
                      ),),
                ],
              ),
            ),
          ),
        );
        });
  }
  
}