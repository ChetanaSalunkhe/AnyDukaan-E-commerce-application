import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/material.dart';

import 'customButtons.dart';

class ModalBottomSheetDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300.0,
        color: Colors.transparent, //could change this to Color(0xFF737373),
        child: new Container(
            child: new Center(
              child: Column(
                children: [
                  //row for text and cross button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        flex: 7,
                          fit: FlexFit.tight,
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(CustomString.multMerch,style: CustomStyle.boldValueText,
                              textAlign: TextAlign.center,)
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
                                icon: Image.asset('assets/close.png',color: CustomColors.black,),
                                iconSize: 50,
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),)
                            ],
                          )),
                    ],
                  ),
                  SizedBox(height: 30,),

                  Padding(
                    padding:EdgeInsets.only(left:16,right:16),
                    child: Text(CustomString.dmsg1,style: CustomStyle.textTitle,
                      textAlign: TextAlign.center,),
                  ),
                  SizedBox(height: 30,),

                  //raisedbutton
                  BtnContinue(CustomString.continue_,context),
                  SizedBox(height: 30,),

                  //textbutton
                  TextButton(
                    onPressed: (){
                      //logic here
                      Navigator.pop(context);
                    },
                    child: Text(CustomString.cancel,style: CustomStyle.boldValueText,textAlign: TextAlign.right,),)
                ],
              ),
            )),
    );
  }
}
