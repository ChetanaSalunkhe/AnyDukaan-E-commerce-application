import 'package:anydukaan/customdesigns/addressCard.dart';
import 'package:anydukaan/customdesigns/customButtons.dart';
import 'package:anydukaan/customdesigns/myCustomAppBar.dart';
import 'package:anydukaan/customdesigns/secondRoute.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:custom_radio_grouped_button/CustomButtons/ButtonTextStyle.dart';
import 'package:custom_radio_grouped_button/CustomButtons/CustomRadioButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

bool isDoorStep = true;

class CheckoutScreen1 extends State{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:CustomAppBarWithoutSearch(CustomString.checkout,true,false,'','assets/chat_bubble.png'),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 16,right: 16),
          color: CustomColors.background_lightblue,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //column - delivery mode,order type
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 12,),
                    //text
                    Text(CustomString.orderType,style:CustomStyle.blackBoldlCust_14,textAlign: TextAlign.left,),
                    SizedBox(height: 12,),
                    /*delivery mode*/
                    CustomRadioButton(
                      elevation: 0,
                      width: 102,
                      height: 32,
                      absoluteZeroSpacing: false,
                      enableShape: true,
                      unSelectedColor: Theme.of(context).canvasColor,
                      buttonLables: [CustomString.doorstep, CustomString.takeaway,],
                      buttonValues: [CustomString.doorstep, CustomString.takeaway,],
                      buttonTextStyle: ButtonTextStyle(
                      selectedColor: CustomColors.white,
                      unSelectedColor: CustomColors.colorblackmerch,
                      textStyle: CustomStyle.subTitleBlack),
                      radioButtonValue: (value) {
                        print(value);
                        setState(() {
                          if(value=='Door Step'){
                            isDoorStep = true;
                          }else{
                            isDoorStep=false;
                          }
                        });
                      },
                      selectedColor: CustomColors.colorPrimaryBlue,
                    ),
                  ],
                ),

                isDoorStep==true?Column(
                  children: [
                    /*address card*/
                    AddressCard(CustomString.home,),
                    SizedBox(height: 24,),
                    /*timings*/
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(CustomString.timeslot,style: CustomStyle.blackBoldlCust_14, textAlign: TextAlign.left,),
                        SizedBox(height: 16,),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:[
                              CustomRadioButton(
                                elevation: 0,
                                height: 32,
                                width: 100,
                                wrapAlignment: WrapAlignment.start,
                                absoluteZeroSpacing: false,
                                enableShape: true,
                                unSelectedColor: Theme.of(context).canvasColor,
                                enableButtonWrap: true,
                                buttonLables: [CustomString.timeslot1, CustomString.timeslot2,CustomString.timeslot3,CustomString.timeslot4,CustomString.timeslot5],
                                buttonValues: [CustomString.timeslot1, CustomString.timeslot2,CustomString.timeslot3,CustomString.timeslot4,CustomString.timeslot5],
                                buttonTextStyle: ButtonTextStyle(
                                    selectedColor: CustomColors.white,
                                    unSelectedColor: CustomColors.colorblackmerch,
                                    textStyle: CustomStyle.subTitleBlack),
                                radioButtonValue: (value) {
                                  print(value);
                                },
                                selectedColor: CustomColors.colorPrimaryBlue,
                              ),
                            ]
                        ),
                      ],
                    ),
                    SizedBox(height: 24,),
                  ],
                ):Column(
                  children: [
                    CustomStyle.getEditTextWithIcon(CustomString.pickupDtime, 14, 1, TextInputType.text,
                        Icons.calendar_today, CustomColors.colorPrimaryBlue, 16, '', CustomColors.black,true),
                    SizedBox(height: 40,),
                    CustomStyle.getDigitalClock(),
                    SizedBox(height: 40,),
                  ],
                ),

                Text(CustomString.paymode,style:CustomStyle.blackBoldlCust_14,textAlign: TextAlign.left,),
                SizedBox(height: 12,),
                /*available payment modes*/
                CustomRadioButton(
                  elevation: 0,
                  width: 102,
                  height: 32,
                  absoluteZeroSpacing: false,
                  enableShape: true,
                  unSelectedColor: Theme.of(context).canvasColor,
                  buttonLables: [CustomString.cod, CustomString.khata,CustomString.upi],
                  buttonValues: [CustomString.cod, CustomString.khata,CustomString.upi],
                  buttonTextStyle: ButtonTextStyle(
                      selectedColor: CustomColors.white,
                      unSelectedColor: CustomColors.colorblackmerch,
                      textStyle: CustomStyle.subTitleBlack),
                  radioButtonValue: (value) {
                    print(value);
                  },
                  selectedColor: CustomColors.colorPrimaryBlue,
                ),
                SizedBox(height: 12,),

                /*if delivery charge added then true else false*/
                Visibility(
                  visible: isDoorStep==true?true:false,
                    child: Container(
                        height: 40,
                        child:Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              side: CustomStyle.orangeOutline,
                            ),
                            child:Padding(
                              padding: EdgeInsets.all(6),
                              child:  Row(
                                children: [
                                  SizedBox(width: 6,),
                                  CustomStyle.getImageIcons('assets/delivery.png', 16, CustomColors.colorPrimaryOrange),
                                  SizedBox(width: 10,),
                                  Flexible(
                                    flex: 1,
                                    fit: FlexFit.tight,
                                    child: Text(CustomString.delChargeAdded,style: CustomStyle.orangeText12,),),
                                  CustomStyle.getImageIcons('assets/close.png', 16, CustomColors.black),
                                  SizedBox(width: 6,),
                                ],
                              ),
                            )
                        )
                    ),),
                SizedBox(height: 70,),
              ]
        ),
        ),
      ),
      bottomSheet:InkWell(
        onTap: (){
          /*call API and on success show screen*/
          Navigator.pop(context);
          Navigator.push(context,
              MaterialPageRoute(builder: (context)=>SecondRoute(callFrom:'checkoutSuccess',)));
        },
        child:BtnViewCart_Checkout(CustomString.totAmt,CustomString.placeOrder,'56',context,'checkoutplaceord'),
      )
    );
  }
}