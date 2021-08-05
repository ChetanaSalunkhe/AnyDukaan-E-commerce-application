import 'package:anydukaan/customdesigns/bottomSheetDialogDesign.dart';
import 'package:anydukaan/customdesigns/customButtons.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'orderListCardMerchant.dart';

bool isLayerVisible = false;
bool isButtonVisible = false;
bool isRejButtonVisible = true;
bool isAcceptButtonVisible = true;
double mainContainerHeight = 352;
String textName=CustomString.accept;
bool isAgentAvailable=false;

int index=0;

Stack GetOrdersCard(BuildContext context,List<String> entries, String image,var imgColor,String tabName,int selectedIndex){
  if(tabName == "ongoing" || tabName == "pending"){
    isButtonVisible = true;
    isRejButtonVisible = true;
    isAcceptButtonVisible = true;
    mainContainerHeight = 378;
    textName = CustomString.accept;
  }else if(tabName == "confirmed"){
    isButtonVisible = true;
    isRejButtonVisible = false;
    isAcceptButtonVisible = true;
    mainContainerHeight = 378;
    textName = CustomString.assignToAgent;
  }else{
    isButtonVisible = false;
    isRejButtonVisible = false;
    isAcceptButtonVisible = false;
    mainContainerHeight = 328;
  }

  return Stack(
    children: [
      Container(
        //height: mainContainerHeight,
        margin: EdgeInsets.only(left: 16,right: 16,top: 7),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(6)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 16,left: 16,right: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Flexible(
                          flex: 5,
                          fit: FlexFit.tight,
                          //here pass count of products
                          child: Text('Products (10)',style: CustomStyle.blackBoldMerch_16,textAlign: TextAlign.start,),
                        ),
                        Visibility(
                          visible: true,
                            child: Flexible(
                              flex: 4,
                              fit: FlexFit.tight,
                              //here pass image as per status of order
                              //for ongoing share image, for all orders their icon as per status
                              child: BtnWithIconLeftSide('Take Away',context,90,35,true, CustomStyle.blue_merch_normal_10,
                                  CustomColors.colorPrimaryBlue,Icons.shopping_bag_outlined,CustomColors.blueBackground),

                              //if refund
                              /*child: BtnWithIconLeftSide('Returns',context,90,35,true, CustomStyle.warningText_merch_normal_10,
                                  CustomColors.red,Icons.keyboard_return, CustomColors.red_card_light),*/

                              //if refund
                              /*child: BtnWithIconLeftSide('Refund',context,90,35,true, CustomStyle.warningText_merch_normal_10,
                                  CustomColors.red,Icons.keyboard_return, CustomColors.red_card_light),*/
                            ),
                        ),
                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          //here pass image as per status of order
                          //for ongoing share image, for all orders their icon as per status
                          child: CustomStyle.getImageIcons('$image', 16, imgColor),
                        ),

                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: CustomStyle.getImageIcons('assets/location.png', 20, CustomColors.colorPrimaryOrange),
                        ),
                        Flexible(
                          flex: 9,
                          fit: FlexFit.tight,
                          //here pass address get from list
                          child: Text(CustomString.officeadr,style: CustomStyle.blackNormalMerch_12,textAlign: TextAlign.justify,softWrap: true,
                            overflow: TextOverflow.fade,),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              //pass final order amount from list
                              Text('₹ 200',style: CustomStyle.blackBoldMerch_16,textAlign: TextAlign.start,),
                              SizedBox(width: 4,),
                              //set status as per payment status
                              ReviewBorder(CustomString.upi,context,60,38,CustomColors.greenboxshade,CustomStyle.greenText10_merch,false),
                            ],
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CustomStyle.getImageIcons('assets/delivery_van.png', 20, CustomColors.colorPrimaryBlue),
                              SizedBox(width: 4,),
                              Text('6PM - 10PM',style: CustomStyle.blue_merch_normal_12,textAlign: TextAlign.start,),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    //do not change it is fix title
                    Text(CustomString.ordSummary,style: CustomStyle.blackBoldMerch_12,textAlign: TextAlign.start,),
                    SizedBox(height: 10,),
                    GetCard('assets/prod2.png','Ashirvad Aata','5 kg','₹ 200','2','TakeAway'),
                    SizedBox(height: 10,),
                    Text('09 '+CustomString.moreprod,style: CustomStyle.blue_merch_bold_12,textAlign: TextAlign.start,),
                    SizedBox(height: 20,),
                  ],
                ),
              ),
              //buttons
              Visibility(
                visible: isButtonVisible,
                  child: Card(
                    elevation: 3,
                    shadowColor: CustomColors.black,
                    margin: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(6),
                          topRight: Radius.circular(6),
                          bottomRight: Radius.circular(6),
                          bottomLeft: Radius.circular(6),
                        )
                    ),
                    child: Container(
                      //decoration: CustomStyle.getBoxShadow(),
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          /*reject and accept*/
                          Flexible(
                            flex:isRejButtonVisible==false?0:1,
                              fit: FlexFit.loose,
                              child: Visibility(
                                visible: isRejButtonVisible,
                                child: InkWell(
                                  splashColor: CustomColors.red,
                                  onTap:(){
                                    //click event here
                                  },
                                  child: Container(
                                    //width: 164,
                                    width: MediaQuery.of(context).size.width,
                                    height: 50,
                                    padding: EdgeInsets.only(top: 18),
                                    child: Text(CustomString.reject,style: CustomStyle.warningText_merch_bold_12,textAlign: TextAlign.center,),
                                  ),
                                ),
                              ),),
                          //if order is not yet assign to del agent then visible
                          //if order assigned to del agent then visibility false
                          Flexible(
                            flex:1,
                            fit: FlexFit.loose,
                            child:Visibility(
                                visible: isAcceptButtonVisible,
                                child: InkWell(
                                    splashColor: CustomColors.red,
                                    onTap:(){
                                      index = selectedIndex;
                                      String key = textName=='Accept'?'Accept':'AssignDelAgentPopup';
                                      //open delivery agent names popup
                                      if(key == 'AssignDelAgentPopup'){
                                        /*if delivery agent not available*/

                                        showModalBottomSheet(
                                            context: context,
                                            isDismissible: true,
                                            isScrollControlled: true,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.only(
                                                  topRight: Radius.circular(14),
                                                  topLeft: Radius.circular(14)),),
                                            builder: (context) => ModalBottomSheetDialog(
                                                popupStyle:
                                                isAgentAvailable?'AssignDelAgentPopup':'CreateAgentPopup'));
                                      }else{
                                        //order acceptance logic here
                                      }

                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(6),
                                          topRight: Radius.circular(6),
                                          topLeft: Radius.circular(isRejButtonVisible==false?6:0),
                                          bottomLeft: Radius.circular(isRejButtonVisible==false?6:0)),
                                      child: Container(
                                        //width: isRejButtonVisible==false?MediaQuery.of(context).size.width-40:MediaQuery.of(context).size.width,
                                        width: MediaQuery.of(context).size.width,
                                        height: 50,
                                        padding: EdgeInsets.only(top: 18),
                                        color: CustomColors.colorPrimaryOrange,
                                        child: Text(textName,style: CustomStyle.whiteBoldMerch_12,textAlign: TextAlign.center,),
                                      ),
                                    ),
                                )),),
                        ],
                      ),
                    ),
                  ),
              ),
            ],
          ),
        ),
      ),
      Visibility(
        visible: isLayerVisible,
          child: Container(
            height: mainContainerHeight,
            margin: EdgeInsets.only(left: 16,right: 16,top: 7),
            decoration: index == selectedIndex?BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: CustomColors.colorPrimaryBlue.withOpacity(0.5),
                  spreadRadius: 0.1,
                  blurRadius: 5,
                  offset: Offset(0, 5), // changes position of shadow
                ),
              ],
            ):BoxDecoration(
            ),
            child: Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      child: Container(
                        height: 74,
                        width: 74,
                        color: CustomColors.colorPrimaryOrange,
                        child:  Icon(Icons.check,color: CustomColors.white,size: 24,),
                      ),
                    )
                  ],
                )
            ),
          ),),
    ],
  );
}