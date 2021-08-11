import 'package:anydukaan/customdesigns/bottomSheetDialogDesign.dart';
import 'package:anydukaan/customdesigns/customButtons.dart';
import 'package:anydukaan/customdesigns/myCustomAppBar.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

bool isSmsBundle1Visible = true;
int _groupValue = -1;
int selIndex=0;

class SMSBundle extends State{
  String params="";
  SMSBundle({Key key,this.params});

  void HandleVisibility() {
    setState(() {
      isSmsBundle1Visible = false;
    });
  }
  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
      onWillPop: () {
        setState(() {
          if(params=='SMS Bundles'){
            isSmsBundle1Visible = true;
          }else{
            Navigator.pop(context);
          }
        });
      },
      child:Scaffold(
          backgroundColor: CustomColors.background_lightblue,
          appBar:CustomAppBarWithoutSearch('$params',true,true,'','assets/help.png'),
          body:SingleChildScrollView(
            child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /*sms bundles*/
                    Padding(
                        padding: EdgeInsets.only(left: 16,right: 16),
                        child: Visibility(
                      visible:params=='SMS Bundles'?true:false,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Visibility(
                              visible: isSmsBundle1Visible==true?true:false,
                              child:Container(
                                /*child: GetBundle1Design_(),*/
                                child: Container(
                                  child: Column(
                                    children: [
                                      SizedBox(height: 20,),
                                      CircularPercentIndicator(
                                        radius: 202.0,
                                        lineWidth: 10.0,
                                        percent: 0.7,
                                        circularStrokeCap: CircularStrokeCap.round,
                                        center: new Text("70%"),
                                        progressColor: CustomColors.colorPrimaryBlue,
                                        backgroundColor: CustomColors.greyline,
                                      ),
                                      SizedBox(height: 30,),
                                      CustomStyle.getEditTextEnterDetails(CustomString.hintsmsdesc, 14, 10, TextInputType.text,CustomStyle.blackNormalMerch_16),
                                      SizedBox(height: 30,),
                                      /*button*/
                                      InkWell(
                                        onTap: (){
                                          //btn click logic here
                                          /*call api to submit apply offer then on success open popup*/
                                          HandleVisibility();
                                        },
                                        child: BtnContinue(CustomString.selContact, context, 'SMSBundleBtn'),
                                      ),
                                      SizedBox(height: 20,),
                                      TextButton(
                                          onPressed: (){
                                            Navigator.pop(context);
                                          },
                                          child: Text(CustomString.cancel,style: CustomStyle.blackBoldMerch_16,textAlign: TextAlign.center,))
                                    ],
                                  ),
                                ),
                              )
                          ),
                          Visibility(
                              visible: isSmsBundle1Visible==false?true:false,
                              child: SingleChildScrollView(
                                //height: MediaQuery.of(context).size.height,
                                child:GetBundle2Design_(),)),
                        ],
                      ),),),

                    /*banners*/
                    Visibility(
                      visible:params=='Banners'?true:false,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 16,right: 16),
                            child: Container(
                              child: Column(
                                children: [
                                  SizedBox(height: 20,),
                                  CustomStyle.getEditTextEnterDetails(CustomString.hintsmsdesc, 14, 10, TextInputType.text,CustomStyle.blackNormalMerch_16),
                                  SizedBox(height: 30,),
                                  /*button*/
                                  InkWell(
                                    onTap: (){
                                      //btn click logic here
                                      /*call api to submit banner request then on success open popup*/
                                      /*open popup*/
                                      showModalBottomSheet(
                                          context: context,
                                          isScrollControlled: true,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(14),
                                                topLeft: Radius.circular(14)),),
                                          builder: (context) => ModalBottomSheetDialog(popupStyle:'BannerRequestPopup'));

                                    },
                                    child: BtnContinue(CustomString.reqBanner, context, 'BannerBtn'),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),),

                    /*whatsapp*/
                    Visibility(
                      visible:params=='Whatsapp Promotions'?true:false,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 16,right: 16),
                            /*child: GetBundle1Design_(),*/
                            child: Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 20,),
                                  Row(
                                    children: [
                                      Flexible(
                                        flex:1,
                                          fit: FlexFit.tight,
                                          child: CircularPercentIndicator(
                                            radius: 150.0,
                                            lineWidth: 10.0,
                                            percent: 0.7,
                                            circularStrokeCap: CircularStrokeCap.round,
                                            center: Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                new Text("150/200",style: CustomStyle.blackBoldMerch_14,),
                                                SizedBox(height: 10,),
                                                new Text(CustomString.weeklymsgs,style: CustomStyle.subTitle_merch,textAlign: TextAlign.center,),
                                              ],
                                            ),
                                            progressColor: CustomColors.colorPrimaryBlue,
                                            backgroundColor: CustomColors.greyline,
                                          ),),
                                      Flexible(
                                        flex:1,
                                        fit: FlexFit.tight,
                                        child: CircularPercentIndicator(
                                          radius: 150.0,
                                          lineWidth: 10.0,
                                          percent: 0.7,
                                          circularStrokeCap: CircularStrokeCap.round,
                                          center: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              new Text("22/200",style: CustomStyle.blackBoldMerch_14,),
                                              SizedBox(height: 10,),
                                              new Text(CustomString.leadmsgs,style: CustomStyle.subTitle_merch,textAlign: TextAlign.center,),
                                            ],
                                          ),
                                          progressColor: CustomColors.colorPrimaryBlue,
                                          backgroundColor: CustomColors.greyline,
                                        ),),
                                    ],
                                  ),
                                  SizedBox(height: 30,),
                                  CustomStyle.getEditTextEnterDetails(CustomString.hintsmsdesc, 14, 10, TextInputType.text,CustomStyle.blackNormalMerch_16),
                                  SizedBox(height: 30,),
                                  Text(CustomString.selPlan,style: CustomStyle.blackBoldMerch_16,),
                                  SizedBox(height: 20,),
                                  SingleChildScrollView(
                                    child:Container(
                                      height: MediaQuery.of(context).size.height-200,
                                      child: GetCard_(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),),

                  ],
                )
            ),
          ),
          bottomSheet:params=='Whatsapp Promotions'?
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: (){
                      //btn click logic here
                    },
                    child: BtnContinue(CustomString.buyPack, context, 'SMSBundleBtnBuy'),
                  )
                ],
              ):Visibility(
            visible: isSmsBundle1Visible==true || (params=='Banners')?false:true,
            child:Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: (){
                    //btn click logic here
                  },
                  child: BtnContinue(params=='SMS Bundles'?CustomString.buyBundle:CustomString.buyPack, context, 'SMSBundleBtnBuy'),
                ),
              ],
            )
          )
      ),
    );
  }
}

class GetBundle2Design_ extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return GetBundle2Design();
  }

}

class GetBundle2Design extends State{

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomStyle.getEditTextEnterDetails(CustomString.hintsmsdesc, 14, 10, TextInputType.text,CustomStyle.blackNormalMerch_16),
          SizedBox(height: 30,),
          Text(CustomString.selPlan,style: CustomStyle.blackBoldMerch_16,),
          SizedBox(height: 20,),
          SingleChildScrollView(
            child:Container(
              height: MediaQuery.of(context).size.height,
              child: GetCard_(),
            ),
          ),
        ],
      ),
    );
  }
}

class GetCard_ extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return GetCard();
  }

}

class GetCard extends State{

  var group1Value;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 4,
          scrollDirection: Axis.vertical,
          itemBuilder: (BuildContext context, int index){
            return Container(
              height: 60,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(
                      flex: 1,
                        fit: FlexFit.tight,
                        child: _myRadioButton(
                          title: "",
                          value: index,
                          onChanged: (newValue){
                            setState(() {
                              _groupValue = newValue;
                              selIndex = index;
                              print(selIndex);
                            });
                          },
                        ),),
                    Flexible(
                      flex: 1,
                        fit: FlexFit.tight,
                        child:GetCardData('10,000',index,'SMS'),
                    ),
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child:GetCardData('86 Days',index,'Validity'),
                    ),
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child:Text('₹ 499',
                        style: selIndex==index?CustomStyle.orange_merch_20:CustomStyle.blackNormalMerch_20,
                        textAlign: TextAlign.start,),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }

}

Widget _myRadioButton({String title, int value, Function onChanged}) {
  return RadioListTile(
    value: value,
    groupValue: _groupValue,
    onChanged: onChanged,
    title: Text(title),
  );
}

Column GetCardData(String val,int index,String title){
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text('$title',style: CustomStyle.subTitle_merch,textAlign: TextAlign.start,),
      SizedBox(height: 10,),
      Text('$val',style: selIndex==index?CustomStyle.orangeMerch_12:CustomStyle.blackNormalMerch_12,textAlign: TextAlign.start,),
    ],
  );
}