import 'package:anydukaan/customdesigns/customButtons.dart';
import 'package:anydukaan/customdesigns/secondRoute.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/material.dart';

class SelectLanguageScreen extends State{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          //height: MediaQuery.of(context).size.height,
          height: 640,
          color: CustomColors.white,
          //margin: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //image
              Container(
                margin: EdgeInsets.only(left: 70,right: 70,top: 73),
                child: CustomStyle.getWalkThroughImages('assets/sellang.png', 220),
              ),
              SizedBox(height: 33,),

              //text
              Flexible(
                  flex: 1,
                  fit: FlexFit.tight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,   //horizontal alignment=left aligned
                    crossAxisAlignment: CrossAxisAlignment.start,   //vertical alignment=top aligned
                    children: [
                      Padding(padding: EdgeInsets.only(left: 16,right: 16),
                        child: Text(CustomString.selectLanguage,style:CustomStyle.blackboldTitleText,),)
                    ],
                  )
              ),
              SizedBox(height: 10,),

              //buttons
              Column(
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context)=>SecondRoute(callFrom: 'WalkThrough',)));
                    },
                    child: BtnContinue('English',context),
                    //child: Text('English',style: CustomStyle.btnTitleBlack16,textAlign: TextAlign.center,),
                  ),
                  SizedBox(height: 12,),
                  InkWell(
                    onTap: (){

                    },
                    child: BtnWithOutline('Hindi',context),
                  ),
                  SizedBox(height: 12,),
                  InkWell(
                    onTap: (){

                    },
                    child: BtnWithOutline('Marathi',context),
                  ),
                  SizedBox(height: 12,),
                  InkWell(
                    onTap: (){

                    },
                    child: BtnWithOutline('Telugu',context),
                  ),
                  SizedBox(height: 12,),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

}