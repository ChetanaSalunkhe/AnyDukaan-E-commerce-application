import 'package:anydukaan/customdesigns/secondRoute.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'bottomSheetDialogDesign.dart';
import 'buttonClickActions.dart';

/*cart, checkout, place order buttons*/
Container BtnViewCart_Checkout(String text1, String btnName, String amtVal,BuildContext context,String clickAction){
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
                    Text('$text1',style: CustomStyle.whiteNormalCust_12,),
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
                          /*Navigator.push(context,
                              MaterialPageRoute(builder: (context)=>ButtonClickActions.callActions("ViewCart")));*/
                          showModalBottomSheet(
                              context: context,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(14),
                                    topLeft: Radius.circular(14)),),
                              builder: (context) => ModalBottomSheetDialog(popupStyle:'MultiMerch'));
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
Container BtnContinue(String title,BuildContext context,String callBtnFrom){

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
          padding: EdgeInsets.only(left: 0,right: 0),
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
                    Text('',style: CustomStyle.whiteNormalCust_12,),
                    Text('',style: CustomStyle.progressTitle,)

                  ],
                ),
              ),

              Flexible(
                flex: 9,
                fit: FlexFit.loose,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //Text('$title',style: CustomStyle.progressTitle,textAlign: TextAlign.center,)
                    TextButton(
                      onPressed: (){
                        //logic here
                        /*Navigator.push(context,
                            MaterialPageRoute(builder: (context)=>SecondRoute(callFrom:callBtnFrom,)));*/
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
        shadowColor: CustomColors.black,
        elevation: 1,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
                Radius.circular(40)
            ),
         side: CustomStyle.blackOutline,
        ),

        child: Padding(
          padding: EdgeInsets.only(left: 28,right: 28),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

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
                      child: Text('$title_',style: CustomStyle.blackNormalCust_14,textAlign: TextAlign.center,),)
                  ],
                ),)
            ],
          ),
        )
    ),
  );
}

Container BtnSelectedIssue(String title_,BuildContext context){

  return Container(
    width: 328,
    height: 50.0,
    color: Colors.transparent,
    margin: EdgeInsets.only(left: 16,right: 16),
    alignment: Alignment.center,
    child:  Card(
      color: CustomColors.blueSelected,
        shadowColor: CustomColors.black,
        elevation: 1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
              Radius.circular(40)
          ),
        ),

        child: Padding(
          padding: EdgeInsets.only(left: 28,right: 28),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

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
                      child: Text('$title_',style: CustomStyle.blackNormalCust_14,textAlign: TextAlign.center,),)
                  ],
                ),)
            ],
          ),
        )
    ),
  );
}

/*single text on button with arrow outline*/
Container BtnWithArrow(String title_,BuildContext context,double width_,double height_,bool isIconVisible,
    var sideStyle,var textStyle,Color iconColor, IconData icon){
  return Container(
    width: width_,
    height: height_,
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
          side: sideStyle,
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 12,right: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: (){
                      //logic here
                    },
                    child: Text('$title_',style:textStyle,textAlign: TextAlign.center,),),
                  Visibility(
                    visible: isIconVisible,
                      child: Padding(
                        padding: EdgeInsets.only(left: 16),
                        child: Icon(icon,size: 16,color: iconColor,)),
                  ),

                ],
              ),
            ],
          ),
        )
    ),
  );
}

/*single text on button with arrow outline*/
Container BtnWithIconNextArrow(String title_,BuildContext context,double width, double height){
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

/*Initial inside box*/
Container ReviewBorder(String title_,BuildContext context,double width, double height, Color backcolor, var textStyle){
  return Container(
    width: width,
    height: height,
    color: Colors.transparent,
    alignment: Alignment.center,
    child:  Card(
        color: backcolor,
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
              Text('$title_',style: textStyle,textAlign: TextAlign.center,),
            ],
          ),
        )
    ),
  );
}

/*single text on blue button*/
Container BtnBlue_singletext_small(String title,BuildContext context,double width, double height,Color btnColor){

  return Container(
    width: width,
    height: height,
    //margin: EdgeInsets.only(left: 16,right: 16),
    alignment: Alignment.center,
    child:  Card(
        color: btnColor,
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
                child: Text('$title',style: CustomStyle.whiteBoldCust_12,textAlign: TextAlign.center,),
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

Container BtnPlusMinus(){
  return   Container(
      alignment: Alignment.center,
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18), // if you need this
            side: CustomStyle.orangeOutline
        ),
        child: Container(
          color: Colors.white,
          width: 104,
          height: 34,
          child:  Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              new Text('+', textAlign: TextAlign.center, style: CustomStyle.primaryBtnTextOrange,),
              SizedBox(width: 24,),
              new Text('1', textAlign: TextAlign.center, style: CustomStyle.primaryBtnTextOrange,),
              SizedBox(width: 24,),
              new Text('-', textAlign: TextAlign.center, style: CustomStyle.primaryBtnTextOrange,),
            ],
          )
        ),
      )
  );
}

/*button with icon and text*/
Container BtnWithIconLeftSide(String title_,BuildContext context,double width_,double height_,bool isIconVisible,
    var textStyle,Color iconColor, IconData image, Color btncolor){
  return Container(
    width: width_,
    height: height_,
    alignment: Alignment.centerLeft,
    child:  Card(
        color: btncolor,
      //shadowColor: CustomColors.colorPrimaryOrange,
      //elevation: 1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
              Radius.circular(99)
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 0,right: 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Visibility(
                    visible: isIconVisible,
                    child: Padding(
                        padding: EdgeInsets.only(left: 0),
                        //child: CustomStyle.getImageIcons(image, 16, iconColor)
                        child: CustomStyle.getIcons(image, 16, iconColor)
                    ),
                  ),
                  TextButton(
                    onPressed: (){
                      //logic here
                    },
                    child: Text('$title_',style:textStyle,textAlign: TextAlign.center,),),

                ],
              ),
            ],
          ),
        )
    ),
  );
}