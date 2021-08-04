import 'package:anydukaan/customdesigns/customButtons.dart';
import 'package:anydukaan/customdesigns/secondRoute.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

int btnClickCnt = 0;
int maxLimit = 3;
bool isOtpCompleted = false;
class OTPPopup extends State{
  @override
  Widget build(BuildContext context) {
    return new Container(
        height: 360.0,
        color: Colors.transparent,
        padding: EdgeInsets.only(left: 16,right: 16),
        child: new Center(
          child: Column(
            children: [
              //row for text and cross button
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    flex: 7,
                    fit: FlexFit.tight,
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 0),
                        child: Text(CustomString.otp,style: CustomStyle.boldValueText,
                          textAlign: TextAlign.center,),)
                      ],
                    ),
                  ),

                  Flexible(
                      flex: 3,
                      fit: FlexFit.loose,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 0),
                            child: IconButton(
                              alignment: Alignment.centerRight,
                              icon: CustomStyle.getImageIcons('assets/close.png',10,CustomColors.black),
                              iconSize: 50,
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),)
                        ],
                      )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(CustomString.entOtp,style: CustomStyle.blackNormalMerch_12,),
                  SizedBox(width: 6,),
                  Text('+91 9876543210',style: CustomStyle.tabbarTitleText,),
                ],
              ),
              SizedBox(height: 20,),
              OTPTextField(
                length: 6,
                width: MediaQuery.of(context).size.width,
                fieldWidth: 45,
                style: CustomStyle.blackBold16,
                textFieldAlignment: MainAxisAlignment.spaceAround,
                fieldStyle: FieldStyle.underline,
                //obscureText: true,
                onCompleted: (pin) {
                  print("Completed: " + pin);
                  setState(() {
                    isOtpCompleted=true;
                  });
                },
              ),
              SizedBox(height: 8,),
              Visibility(
                visible:btnClickCnt==maxLimit?true:false,
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(CustomString.wrongOTP,style: CustomStyle.warningText,),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(CustomString.didntRcvOTP,style: CustomStyle.blackNormalMerch_12,),
                  SizedBox(width: 6,),
                  Text(CustomString.resend,style: CustomStyle.tabbarTitleText,),
                ],
              ),
              SizedBox(height: 50,),
              IgnorePointer(
                ignoring: isOtpCompleted==false?true:btnClickCnt==maxLimit?true:false,
                child:Opacity(
                  opacity: isOtpCompleted==false?0.3:btnClickCnt==maxLimit?0.3:1,
                  child: InkWell(
                    onTap: (){
                      /*if otp match then success else give 2 more chances to click button*/
                      /*if consumer app then */
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=>SecondRoute(callFrom: 'ConsumerHome',)));

                      /*if merchant app then */
                     /* Navigator.push(context,
                          MaterialPageRoute(builder: (context)=>SecondRoute(callFrom: 'MerchantHome',)));*/

                     /* setState(() {
                        if(btnClickCnt<maxLimit){
                          btnClickCnt++;
                        }else{
                          *//*after timer ends*//*
                          btnClickCnt=0;
                        }
                      });*/
                    },
                    child:BtnContinue(btnClickCnt==maxLimit?CustomString.retry:CustomString.verify, context, 'OTPScreen'),
                  ),
                )
              ),
            ],
          ),
        ));
  }

}