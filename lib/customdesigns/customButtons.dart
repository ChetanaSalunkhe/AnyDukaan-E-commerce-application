import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'bottomSheetDialogDesign.dart';

/*cart, checkout, place order buttons*/
Container BtnViewCart_Checkout(String text1, String btnName, String amtVal,BuildContext context){
  return  Container(
    width: 328,
    height: 58.0,
    color: Colors.transparent,
    margin: EdgeInsets.only(left: 16,right: 16),
    child: Card(
        color: CustomColors.colorPrimaryOrange,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
                Radius.circular(40)
            )
        ),

        child: Padding(
          padding: EdgeInsets.only(left: 28,right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('$text1',style: CustomStyle.subTitleWhite,),
                    Text('$amtVal',style: CustomStyle.progressTitle,)

                  ],
                ),),

              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: (){
                          showModalBottomSheet(
                              context: context,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(14),
                                    topLeft: Radius.circular(14)),),
                              builder: (context) => ModalBottomSheetDialog());
                         },
                        child: Text('$btnName',style: CustomStyle.progressTitle,textAlign: TextAlign.right,),)
                  ],
                ),)
            ],
          ),
        )
    ),
  );
}

/*single text on button*/
Container BtnContinue(String title,BuildContext context){

  return Container(
    width: 328,
    height: 50.0,
    color: Colors.transparent,
    margin: EdgeInsets.only(left: 16,right: 16),
    alignment: Alignment.center,
    child:  Card(
        color: CustomColors.colorPrimaryOrange,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
                Radius.circular(40)
            )
        ),

        child: Padding(
          padding: EdgeInsets.only(left: 28,right: 28),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                flex: 1,
                fit: FlexFit.loose,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('',style: CustomStyle.subTitleWhite,),
                    Text('',style: CustomStyle.progressTitle,)

                  ],
                ),
              ),

              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //Text('$title',style: CustomStyle.progressTitle,textAlign: TextAlign.center,)
                    TextButton(
                      onPressed: (){
                        //logic here
                      },
                      child: Text('$title',style: CustomStyle.progressTitle,textAlign: TextAlign.right,),)
                  ],
                ),)
            ],
          ),
        )
    ),
  );
}