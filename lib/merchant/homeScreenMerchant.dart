import 'package:anydukaan/customdesigns/customButtons.dart';
import 'package:anydukaan/customdesigns/deliverySetup.dart';
import 'package:anydukaan/customdesigns/merchAppBar.dart';
import 'package:anydukaan/customdesigns/paymentOptionSetup.dart';
import 'package:anydukaan/customdesigns/productSetup.dart';
import 'package:anydukaan/customdesigns/uploadImageSetup.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:progress_timeline/progress_timeline.dart';

class HomeMerchant extends State{
  var screenProgress;
  ProgressTimeline progressTimeline;
  String btnTitle="";
  bool isUploadImgVisible=true;
  bool isSaveContinuePayment=false;
  bool isSaveDelSetup=false;
  bool isSaveProdSetup = false;
  bool isStage1 = true;
  bool isStage2= false;
  bool isStage3= false;
  bool isStage4= false;

  @override
  void initState() {
    progressTimeline = ProgressTimeline(
      states: CustomString.allStages,
      textStyle: CustomStyle.blackBoldMerch_12,
      height: 65,
      connectorColor: CustomColors.greenlight,
      iconSize: 16,
      connectorWidth: 2,
      connectorLength: 72,
      currentIcon: Icon(
        Icons.radio_button_checked,
        color: CustomColors.greenlight,
      ),
      checkedIcon: Icon(
        Icons.check_circle,
        color: CustomColors.greenlight,
      ),
      uncheckedIcon: Icon(
        Icons.radio_button_off_outlined,
        color: CustomColors.greenlight,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.background_lightblue,
      appBar: CustomAppBarWithoutSearch_Merchant('Home',true,true,'assets/help.png','assets/notification_merch.png',
          'assets/hamburger_menu.png'),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(left: 16,right: 16,top: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /*welcome note*/
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(CustomString.welcom,style: CustomStyle.blackBoldMerch_18,textAlign: TextAlign.start,),
                      SizedBox(height: 7,),
                      Text(CustomString.steps,style: CustomStyle.blackNormalMerch_12,textAlign: TextAlign.start,),
                    ],
                  ),
                  SizedBox(height: 20,),

                  //progress timeline of status
                  progressTimeline,
                  SizedBox(height: 10,),
                  CustomStyle.GetDivider(),

                  /*stage 1 - upload image*/
                  Visibility(
                    visible: isStage1,
                      child: SingleChildScrollView(
                        child: UploadImg(),
                      ),
                  ),

                  /*stage 2 - payment options*/
                  Visibility(
                    visible: isStage2,
                    child:Container(
                      height: MediaQuery.of(context).size.height-150,
                      margin: EdgeInsets.zero,
                      padding: EdgeInsets.zero,
                      child: PaymentOpt(),
                    ),),

                  /*stage 3 - delivery setup*/
                  Visibility(
                    visible: isStage3,
                    child: DeliveryOpt(),
                  ),

                  /*stage 4 - product setup*/
                  Visibility(
                    visible: isStage4,
                    child: ProductSetup(),
                  ),

                ],
              ),
            )

          ],
        ),
      ),
      bottomSheet:Container(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Visibility(
              visible: isUploadImgVisible,
              child:  FlatButton(
                padding: EdgeInsets.zero,
                onPressed: (){
                  progressTimeline.gotoNextStage();
                  setState(() {
                    isUploadImgVisible = false;
                    isSaveContinuePayment=true;
                    isSaveDelSetup=false;
                    isSaveProdSetup = false;

                    //display UI of stages
                    isStage1 = false;
                    isStage2 = true;
                  });
                },
                child: BtnContinue(CustomString.upload, context, 'UploadImage'),
              ),
            ),
            Visibility(
              visible:isSaveContinuePayment,
              child: FlatButton(
                padding: EdgeInsets.zero,
                onPressed: (){
                  progressTimeline.gotoNextStage();
                  setState(() {
                    isUploadImgVisible = false;
                    isSaveContinuePayment=false;
                    isSaveDelSetup=true;
                    isSaveProdSetup = false;

                    //display UI of stages
                    isStage1 = false;
                    isStage2 = false;
                    isStage3 = true;
                  });
                },
                child: BtnContinue(CustomString.saveAndContinue, context, 'SaveContinue'),
              )
            ),
            Visibility(
                visible:isSaveDelSetup,
                child: FlatButton(
                  padding: EdgeInsets.zero,
                  onPressed: (){
                    progressTimeline.gotoNextStage();
                    setState(() {
                      isUploadImgVisible = false;
                      isSaveContinuePayment=false;
                      isSaveDelSetup=false;
                      isSaveProdSetup = true;

                      //display UI of stages
                      isStage1 = false;
                      isStage2 = false;
                      isStage3 = false;
                      isStage4 = true;

                    });
                  },
                  child: BtnContinue(CustomString.saveAndContinue, context, 'SaveContinue'),
                )
            ),
            Visibility(
                visible:isSaveProdSetup,
                child: FlatButton(
                  padding: EdgeInsets.zero,
                  onPressed: (){
                    progressTimeline.gotoNextStage();
                    setState(() {
                      isUploadImgVisible = false;
                      isSaveContinuePayment=false;
                      isSaveDelSetup=false;
                      isSaveProdSetup = true;
                    });
                  },
                  child: BtnContinue(CustomString.saveAndContinue, context, 'SaveContinue'),
                )
            ),
          ],
        ),
      ),
    );
  }
}

