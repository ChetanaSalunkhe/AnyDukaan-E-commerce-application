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
        shadowColor: CustomColors.black,
        elevation: 5,
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
    //color: Colors.transparent,
    margin: EdgeInsets.only(left: 16,right: 16),
    alignment: Alignment.center,
    child:  Card(
        color: CustomColors.colorPrimaryOrange,
        shadowColor: CustomColors.black,
        elevation: 5,
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

/*single text on button with outline*/
Container BtnWithOutline(String title_,BuildContext context){

  return Container(
    width: 328,
    height: 50.0,
    color: Colors.transparent,
    margin: EdgeInsets.only(left: 16,right: 16),
    alignment: Alignment.center,
    child:  Card(
        //color: CustomColors.white,
        shadowColor: CustomColors.black,
        elevation: 1,
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
                    Text('',style: CustomStyle.blackBold16,),
                    Text('',style: CustomStyle.blackBold16,)

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
                    TextButton(
                      onPressed: (){
                        //logic here
                      },
                      child: Text('$title_',style: CustomStyle.boldValueText,textAlign: TextAlign.center,),)
                  ],
                ),)
            ],
          ),
        )
    ),
  );
}

/*single text on button with arrow outline*/
Container BtnWithArrow(String title_,BuildContext context){
  return Container(
    width: 172,
    height: 40.0,
    color: Colors.transparent,
    //margin: EdgeInsets.only(left: 16,right: 16),
    alignment: Alignment.centerLeft,
    child:  Card(
        //shadowColor: CustomColors.colorPrimaryOrange,
        //elevation: 1,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
                Radius.circular(99)
            ),
          side: CustomStyle.orangeOutline
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 12,right: 12),
          child: Row(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: (){
                      //logic here
                    },
                    child: Text('$title_',style: CustomStyle.primaryBtnTextOrange,textAlign: TextAlign.left,),),
                  SizedBox(width: 16,),
                  CustomStyle.getImageIcons('assets/next.png', 16, CustomColors.colorPrimaryOrange),
                ],
              ),
            ],
          ),
        )
    ),
  );
}

/*single text on button with arrow outline*/
Container BtnWithIcon(String title_,BuildContext context,double width, double height){
  return Container(
    width: width,
    height: height,
    color: Colors.transparent,
    //margin: EdgeInsets.only(left: 16,right: 16),
    alignment: Alignment.center,
    child:  Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
                Radius.circular(99)
            ),
            side: CustomStyle.orangeOutline
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 10,right: 10),
          child: Row(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: (){
                      //logic here
                    },
                    child: Text('$title_',style: CustomStyle.primaryBtnTextOrange,textAlign: TextAlign.left,),),
                  SizedBox(width: 16,),
                  CustomStyle.getImageIcons('assets/next.png', 16, CustomColors.colorPrimaryOrange),
                ],
              ),
            ],
          ),
        )
    ),
  );
}

Container BtnWithIconAdd(String title_,BuildContext context,double width, double height){
  return Container(
    width: width,
    height: height,
    color: Colors.transparent,
    alignment: Alignment.center,
    child:  Card(
      color: CustomColors.colorPrimaryOrange,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
                Radius.circular(99)
            ),
            //side: CustomStyle.orangeOutline
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 10,right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: (){
                  //logic here
                },
                child: Text('$title_',style: CustomStyle.whiteBold14,textAlign: TextAlign.center,),),
            ],
          ),
        )
    ),
  );
}

Container ReviewBorder(String title_,BuildContext context,double width, double height){
  return Container(
    width: width,
    height: height,
    color: Colors.transparent,
    alignment: Alignment.center,
    child:  Card(
        color: CustomColors.blueboxshade,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
              Radius.circular(10)
          ),
          //side: CustomStyle.orangeOutline
        ),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$title_',style: CustomStyle.blueboldTitleText,textAlign: TextAlign.center,),
            ],
          ),
        )
    ),
  );
}

/*single text on blue button*/
Container BtnBlue_singletext_small(String title,BuildContext context,double width, double height){

  return Container(
    width: width,
    height: height,
    //margin: EdgeInsets.only(left: 16,right: 16),
    alignment: Alignment.center,
    child:  Card(
        color: CustomColors.colorPrimaryBlue,
        shadowColor: CustomColors.black,
        elevation: 5,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
                Radius.circular(99)
            )
        ),

        child: Padding(
          padding: EdgeInsets.only(top:6,bottom:6),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment:CrossAxisAlignment.center,
            children: [
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: Text('$title',style: CustomStyle.btnTitleWhite_12,textAlign: TextAlign.center,),
              ),

            ],
          ),
        )
    ),
  );
}

/*single text on blue button ourtlinw*/
Container BtnBlue_singletext_small_outline(String title_,BuildContext context,double width, double height){

  return Container(
      width: width,
      height: height,
      color: Colors.transparent,
      //margin: EdgeInsets.only(left: 16,right: 16),
      alignment: Alignment.center,
      child:  Card(
        //color:
        // CustomColors.white,
        /*shadowColor: CustomColors.black,
        elevation: 1,*/
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
                Radius.circular(99)
            ),
            side: CustomStyle.blackOutline
        ),

        child: Padding(
          padding: EdgeInsets.only(top:6,bottom:6),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment:CrossAxisAlignment.center,
            children: [
            Flexible(
            flex: 1,
            fit: FlexFit.loose,
            child: Text('$title_',style: CustomStyle.subTitleBlack,textAlign: TextAlign.center,),
          ),

          ],
        ),
      )
  ),
  );
}