import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'cardWithButtonsListDesign.dart';
import 'customButtons.dart';

Container getmyKhataCard(String shoptitle, String subtitle, String i2,String status,String btnTitle,BuildContext context,
    bool isRowVisible,String khataStatus){
  return Container(
    margin: EdgeInsets.only(top: 12),
    child: Card(
      margin: EdgeInsets.only(top: 3),
      color: Colors.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
              Radius.circular(10)
          )
      ),

      child:Padding(
        padding: EdgeInsets.only(top: 12,bottom: 12,left: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                  child: CustomStyle.getImageBanner('assets/shop.png', 67, 75,BoxFit.cover),
                ),
                SizedBox(width: 18,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('$shoptitle',style: CustomStyle.blackBoldlCust_14,textAlign: TextAlign.left,),
                    SizedBox(height: 3,),
                    Text('$subtitle',style: CustomStyle. subTitle,textAlign: TextAlign.left,),
                  ],
                ),
              ],
            ),

            Visibility(
              visible: isRowVisible==true?true:false,
                child: khataStatus=='accepted'?
                Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        flex: 1,
                        fit: FlexFit.tight,
                        child: Padding(padding: EdgeInsets.only(top:13, bottom:0),
                          child:Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CustomStyle.getImageIcons(i2, 16, CustomColors.greenlight),
                              SizedBox(width: 6,),
                              Text('$status',style: CustomStyle.greenText12,textAlign: TextAlign.left,),
                            ],
                          ),
                        ),),
                      Flexible(
                        flex: 2,
                        fit: FlexFit.tight,
                        child:BtnContinue('$btnTitle',context,''),
                      ),
                    ]
                ):
                Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        flex: 1,
                        fit: FlexFit.tight,
                        child: Padding(padding: EdgeInsets.only(top:13, bottom:0),
                          child:Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,

                            children: [
                              CustomStyle.getImageIcons(i2, 16, CustomColors.red),
                              SizedBox(width: 6,),
                              Text('$status',style: CustomStyle.warningText,textAlign: TextAlign.left,),
                            ],
                          ),
                        ),),
                      Flexible(
                        flex: 2,
                        fit: FlexFit.tight,
                        child: Padding(
                          padding: EdgeInsets.only(right: 16),
                          child: BtnWithArrow(CustomString.cancel, context,MediaQuery.of(context).size.width,50, false,
                              CustomStyle.orangeOutline,CustomStyle.orangeText12,CustomColors.colorPrimaryOrange,Icons.arrow_forward),),
                      )
                    ]
                ),),
          ],
        ),
      )
  )
  );
}