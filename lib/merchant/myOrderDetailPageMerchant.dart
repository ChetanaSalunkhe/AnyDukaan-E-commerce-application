import 'package:anydukaan/customdesigns/customButtons.dart';
import 'package:anydukaan/customdesigns/myCustomAppBar.dart';
import 'package:anydukaan/customdesigns/orderListCardMerchant.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/material.dart';

final List<String> entries = <String>["Restaurant","Grocery","Vegetables","Fruits","Meat", "Sweets","Dry Fruits","Stationary"];
String custName = 'Venkatesh K Shantanu';

class MyOrderDetailsPageMerchant extends State{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CustomColors.background_lightblue,
        appBar: CustomAppBarWithoutSearch(CustomString.myords,true,true,'assets/share1.png','assets/chat_bubble.png',),
        body: SingleChildScrollView(
          child:Stack(
            children: [
              Column(
                children: [
                  SizedBox(height: 12,),
                  Padding(
                      padding: EdgeInsets.only(top: 16,left: 16,right: 16),
                      child:   Column(
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
                                visible: false,
                                child: Flexible(
                                  flex: 4,
                                  fit: FlexFit.tight,
                                  //here pass image as per status of order
                                  //for ongoing share image, for all orders their icon as per status
                                  /* child: BtnWithIconLeftSide('Take Away',context,90,35,true, CustomStyle.blue_merch_normal_10,
                                          CustomColors.colorPrimaryBlue,Icons.shopping_bag_outlined,CustomColors.blueBackground),*/

                                  //if refund
                                  /*child: BtnWithIconLeftSide('Returns',context,90,35,true, CustomStyle.warningText_merch_normal_10,
                                  CustomColors.red,Icons.keyboard_return, CustomColors.red_card_light),*/

                                  //if refund
                                  /*child: BtnWithIconLeftSide('Refund',context,90,35,true, CustomStyle.warningText_merch_normal_10,
                                  CustomColors.red,Icons.keyboard_return, CustomColors.red_card_light),*/
                                ),
                              ),
                              Flexible(
                                flex: 2,
                                fit: FlexFit.tight,
                                //here pass image as per status of order
                                //for ongoing share image, for all orders their icon as per status
                                child: CustomStyle.getImageBanner('assets/returns_ord.png',73,20,BoxFit.cover),
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
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              /*here put customername in custname string*/
                              ReviewBorder(custName.substring(0,1),context,43,43,CustomColors.blueboxshade,CustomStyle.blue_merch_normal_18,false),
                              SizedBox(width: 10,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text('Venkatesh K Shantanu',style: CustomStyle.blackBoldMerch_16,textAlign:TextAlign.start,),
                                  SizedBox(height: 3,),
                                  Text('0987654321',style: CustomStyle.blackBoldMerch_12,textAlign:TextAlign.start,),
                                ],
                              )
                            ],
                          ),
                          SizedBox(height: 20,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('Rajesh Sharma',style: CustomStyle.blackBoldMerch_12,textAlign:TextAlign.start,),
                              SizedBox(height: 8,),
                              Text(CustomString.ordPlaceOn+'22nd March, 7:30 PM',style: CustomStyle.blackNormalMerch_12,textAlign:TextAlign.start,),
                              SizedBox(height: 4,),
                              Text(CustomString.retAmt+'₹ 250',style: CustomStyle.blackNormalMerch_12,textAlign:TextAlign.start,),
                              SizedBox(height: 4,),
                              Text(CustomString.retOn+'22nd March, 8:30 PM',style: CustomStyle.blackNormalMerch_12,textAlign:TextAlign.start,),
                            ],
                          ),
                          SizedBox(height: 20,),
                          Container(
                            height: MediaQuery.of(context).size.height,
                            child: CustomView(),
                          )
                        ],
                      ),
                  ),
                ],
              ),
            ],
          )
        ),
      bottomSheet:Container(
        color: Colors.transparent,
        child:Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: (){

              },
              child: BtnContinue(CustomString.refund_+' (₹ 250)', context, 'OrdDetailPage'),
            ),
          ],
        )
      )
    );
  }
}

class CustomView extends StatelessWidget{
  List<String> entries;
  CustomView({Key key,this.entries}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: ScrollPhysics(),
        itemCount: 10,
        itemBuilder: (BuildContext context, int index){
          return Container(
            //here pass entries[index] value as per requirement
            child:GetCard('assets/prod2.png','Ashirvad Aata','5 kg','₹ 200','2','Returns'),
          );
        }
    );
  }
}
