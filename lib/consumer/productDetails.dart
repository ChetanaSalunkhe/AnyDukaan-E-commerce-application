import 'package:anydukaan/customdesigns/bottombardesign.dart';
import 'package:anydukaan/customdesigns/cardWithButtonsGridDesign.dart';
import 'package:anydukaan/customdesigns/cardWithButtonsListDesign.dart';
import 'package:anydukaan/customdesigns/customButtons.dart';
import 'package:anydukaan/customdesigns/customPageIndicator.dart';
import 'package:anydukaan/customdesigns/myCustomAppBar.dart';
import 'package:anydukaan/customdesigns/reviewsListDesign.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

final List<String> entries = <String>["Restaurant","Grocery","Vegetables","Fruits","Meat",
  "Sweets","Dry Fruits","Stationary"];
String dropdownValue = "All";

class ProductDetails extends State{

  @override
  Widget build(BuildContext context) {
    String title = CustomString.title_shops_near;

    return Scaffold(
      resizeToAvoidBottomInset: false,
        appBar: CustomAppBarWithoutSearch('Product Details'),
        body: SingleChildScrollView(
          clipBehavior: Clip.antiAlias,
          child:   Column(
            children: [
              Container(
                color: CustomColors.background_lightblue,
                margin: EdgeInsets.zero,
                height: MediaQuery.of(context).size.height*2.3,
                child: Column(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(14),
                            bottomLeft: Radius.circular(14)
                        ),
                        child: Container(
                            child: StackDemo()
                        )
                    ),
                    SizedBox(height: 30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 16),
                          child: Text(CustomString.otherProducts,style: CustomStyle.blackBold16,),)
                      ],
                    ),
                    SizedBox(height: 24,),
                    Container(
                        height: 242,
                        child: Padding(
                          padding: EdgeInsets.only(left: 16),
                          child: CustomListView(entries:entries),
                        )
                    ),
                    SizedBox(height: 30,),
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(14),
                          topRight: Radius.circular(14)
                      ),
                      child:  Container(
                        margin: EdgeInsets.zero,
                        height: MediaQuery.of(context).size.height*1,
                        padding: EdgeInsets.only(left: 16,right: 16,top: 20),
                        decoration: CustomStyle.getBoxShadow(),
                        child:Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(CustomString.shopReviews,style: CustomStyle.blackBold16,),
                              ],
                            ),
                            ReviewListView(entries: entries,)
                          ],
                        )
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar : CustomBottomBar()
    );
  }
}

class CustomListView extends StatefulWidget{
  List<String> entries;
  CustomListView({Key key,this.entries}):super(key: key);

  @override
  State<StatefulWidget> createState() {

    return ListViewUI_cardWithbtns(entries:entries);
  }
}

class StackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Stack(
      children: <Widget>[
        //background widget
        new Column(
          children: <Widget>[
            Container(
              color: CustomColors.background_lightblue,
              margin: EdgeInsets.zero,
              alignment: Alignment.center,
              height: 282,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 32,),
                  AdvPages(iName:'assets/prod2.png',width:151,height:150,),
                ],
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(14),
                  bottomLeft: Radius.circular(14)
              ),
              child:  Container(
                margin: EdgeInsets.zero,
                alignment: Alignment.center,
                height: 200,
                decoration: CustomStyle.getBoxShadow(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                        child: Padding(
                          padding: EdgeInsets.only(top: 83,left: 16,right: 16),
                          child: Text(CustomString.dmsg2,style: CustomStyle.subTitle,
                            textAlign: TextAlign.justify,
                            maxLines: 6,
                            softWrap: true,
                            overflow: TextOverflow.fade,),))
                  ],
                ),
              ),
            ),
          ],
        ),

        //overlay widget
        new Container(
          alignment: Alignment.topCenter,
          padding: new EdgeInsets.only(
            top: 210,
              right: 20.0,
              left: 20.0),
          child:
          new Container(
              height: 158,
               width: MediaQuery.of(context).size.width,
              child: new Card(
                  shadowColor: CustomColors.black,
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                      Radius.circular(20)
                    ),
                  ),
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Flexible(
                            flex: 1,
                            fit: FlexFit.tight,
                            child:  Text('Govardhan Gold milk (Pure Tonned)',style: CustomStyle.blackBold16,
                            maxLines: 2,softWrap: true,overflow: TextOverflow.fade,),),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text('₹ 60',style: CustomStyle.textWithLine,),
                                  SizedBox(width: 8,),
                                  Text('₹ 30',style: CustomStyle.blackBold16,),
                                ],
                              ),
                              Text('-50% Off',style: CustomStyle.warningText,),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 4,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(CustomString.manfcture,style: CustomStyle.greenText12,)
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          BtnWithIcon('500 ml',context,126,40),
                          SizedBox(width: 24,),
                          BtnWithIconAdd('+ Add',context,126,40),
                        ],
                      )
                    ],
                  ),
                )
            ),
          ),
        )
      ],
    );
  }
}

class ReviewListView extends StatefulWidget{
  List<String> entries;
  ReviewListView({Key key,this.entries}):super(key: key);

  @override
  State<StatefulWidget> createState() {

    return ReviewsListDesign(entries:entries);
  }
}