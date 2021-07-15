import 'package:anydukaan/customdesigns/myCustomAppBar.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/material.dart';

class MerchantReview extends State{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.background_all,
      appBar: CustomAppBarWithoutSearch('Merchant Review',true,false,'assets/share1.png','assets/chat_bubble.png'),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 77,
              margin: EdgeInsets.only(left: 16,right: 16,top: 10),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left:14,right: 14,top: 5,bottom: 5),
                      child: CustomStyle.getImageBanner('assets/restbanner.png', 49, 49,BoxFit.fill),
                    ),
                    Flexible(
                        flex: 1,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top:14,right: 16,),
                                child: Flexible(
                                  flex:8,
                                  fit: FlexFit.tight,
                                  child: Text('Govardhan Milk',style: CustomStyle.textsemiboldblackTitle,
                                    textAlign: TextAlign.start,),),),
                              Padding(
                                padding: EdgeInsets.only(top: 3,right: 16),
                                child:  Flexible(
                                  flex:8,
                                  fit: FlexFit.tight,
                                  child: Text('100 g',style: CustomStyle.subTitle,
                                    textAlign: TextAlign.start,),),
                              ),
                            ],
                          ),
                        )),
                  ],
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 16,top: 18),
                  child: Text('Rating',style: CustomStyle.textTitle, textAlign: TextAlign.start,),),
                Padding(
                    padding: EdgeInsets.only(left: 16,top: 9),
                    child: CustomStyle.GetRatingBar(5, Icons.star_outline, CustomColors.grey_subtitle, 20)),

              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 16,top: 18,right: 16),
              child: CustomStyle.getEditTextSearch('A detailed, Honest reviews helps Merchants to improve', 14,10),),
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