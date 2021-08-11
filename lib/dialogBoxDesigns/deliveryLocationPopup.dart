import 'package:anydukaan/customdesigns/customButtons.dart';
import 'package:anydukaan/customdesigns/radioGroupDesign.dart';
import 'package:anydukaan/customdesigns/secondRoute.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/material.dart';
import 'package:group_radio_button/group_radio_button.dart';

class DeliveryLocPopup extends State{
  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
        fit: FlexFit.loose,
        child: new Container(
            height: 550.0,
            color: Colors.transparent,
            child: Padding(
              padding: EdgeInsets.only(left: 16,right: 16,top: 13),
              child:Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(CustomString.delLoc,style: CustomStyle.blackBoldlCust_14,textAlign: TextAlign.start,),
                    ],
                  ),
                  SizedBox(height: 10,),
                  CustomStyle.getEditTextEnterDetails(CustomString.hintflat, 14,2,TextInputType.multiline,CustomStyle.blackBoldlCust_14),
                  CustomStyle.getEditTextEnterDetails(CustomString.hintLandmark, 14,1,TextInputType.text,CustomStyle.blackBoldlCust_14),
                  CustomStyle.getEditTextEnterDetails(CustomString.hintRoad, 14,2,TextInputType.multiline,CustomStyle.blackBoldlCust_14),
                  SizedBox(height: 8,),
                  Row(
                    children: [
                      CustomStyle.getImageIcons('assets/save1.png', 16, CustomColors.colorPrimaryBlue),
                      RadioGroupDesign(verticalGroupValue:CustomString.verticalGroupValue,status:CustomString.status,direction: Axis.horizontal,),

                    ],
                  ),
                  SizedBox(height: 8,),
                  InkWell(
                    onTap: (){
                      Navigator.pop(context);
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context)=>SecondRoute(callFrom: 'checkoutDelDtls',)));
                    },
                    child:BtnContinue(CustomString.addAddress, context,'DeliveryLocPopup')
                  ),
                ],
              ),
            )
        ));
  }

}