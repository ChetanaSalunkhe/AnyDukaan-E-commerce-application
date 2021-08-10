import 'package:anydukaan/customdesigns/customButtons.dart';
import 'package:anydukaan/customdesigns/secondRoute.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/material.dart';

class LoginPopup extends State{
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          height: 300.0,
          color: Colors.transparent,
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
                            padding: EdgeInsets.only(left: 16),
                            child: Text(CustomString.login,style: CustomStyle.boldValueText,
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
                              padding: EdgeInsets.only(right: 16),
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
                SizedBox(height: 34,),
                Padding(
                  padding: EdgeInsets.only(left: 16,right: 16),
                  /*padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),*/
                  child: CustomStyle.getEditTextMobile('Mobile Number', 14,10,TextInputType.number,CustomStyle.blackBoldlCust_14),),
                SizedBox(height: 53,),
                //raisedbutton
                InkWell(
                  onTap: (){
                    Navigator.pop(context);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>SecondRoute(callFrom: 'BottomCart',)));
                  },
                  child: BtnContinue(CustomString.sendOTP,context,'LoginPopup'),
                ),
              ],
            ),
          )),
    );
  }

}