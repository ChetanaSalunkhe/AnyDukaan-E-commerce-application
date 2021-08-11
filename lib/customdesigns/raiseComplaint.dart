import 'package:anydukaan/customdesigns/myCustomAppBar.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/material.dart';

class RaiseComplaint extends State{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.background_all,
      appBar: CustomAppBarWithoutSearch(CustomString.raiseComplaint,true,false,'assets/share1.png','assets/chat_bubble.png'),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 16,top: 18,right: 16),
              child: CustomStyle.getEditTextEnterDetails(CustomString.hintnamedukan, 14,2,TextInputType.text,CustomStyle.blackBoldlCust_14),),
            Padding(
              padding: EdgeInsets.only(left: 16,top: 18,right: 16),
              child: CustomStyle.getEditTextItalic(CustomString.hintraisecomplaint, 14,10),),
          ],
        ),
      ),
      floatingActionButton: SizedBox(
        height: 50.0,
        width: 58.0,
        child: FittedBox(
          child: FloatingActionButton(
            backgroundColor: CustomColors.colorPrimaryOrange,
            child: Icon(Icons.check,color: CustomColors.white,),
            onPressed: () {},
          ),
        ),
      ),
    );
  }

}