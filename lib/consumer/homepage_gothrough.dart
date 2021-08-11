import 'package:anydukaan/customdesigns/bottombardesign.dart';
import 'package:anydukaan/customdesigns/customSearchBar.dart';
import 'package:anydukaan/customdesigns/dashedLine.dart';
import 'package:anydukaan/customdesigns/myCustomAppBar2.dart';
import 'package:anydukaan/customdesigns/secondRoute.dart';
import 'package:anydukaan/customdesigns/title_viewall_btndesign1.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:anydukaan/valueresources/dimens.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../myMainPage.dart';

final List<String> entries = <String>["Restaurant","Grocery","Vegetables","Fruits","Meat",
  "Sweets","Dry Fruits","Stationary"];

class HomePageState extends State {
  var _selectedIndex;

  @override
  Widget build(BuildContext context) {
    String duk_Rest = CustomString.dukansAndRest;
    String recomnd = CustomString.recomendForYou;
    String searchHere = CustomString.searchHere;

    return Scaffold(
      appBar: CustomAppBarWithSearch(title:"Home 1 - Pune",searchHint:'$searchHere',isLeadingVisible:true,
        isActionVisible:true,img: 'assets/audio_search.png',),//give your appbar title here
      body:  SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30),

            //gridview of segment list
            Container(
              height: 190,
              child: CustomGridView(),

            ),

            SizedBox(height: 20),

            //banner 1
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  //child: Image.asset("assets/banner1home.png",width: MediaQuery.of(context).size.width,height: 128,)
                    child: CustomStyle.getImageBanner("assets/banner1home.png",MediaQuery.of(context).size.width,128, BoxFit.fill,)
                ),
              ],
            ),

            SizedBox(height: 20),

            //dukaans and restaurant nearby
            Container(
              height: 50,
              //title widget dukans and restaurant nearby
              child: Title_ViewBtnWidget(dukansAndRest:'$duk_Rest',callFrom:'Shops'),

            ),
            /*dukaans and restaurant nearby list*/
            Container(
              height: 140,
              margin: EdgeInsets.only(right: 16),
              //listview of dukans and rest list
              child: CustomListView(),

            ),

            SizedBox(height: 35,),

            //recommended for you
            Container(
              height: 50,
              //title widget recommended for you
              child: Title_ViewBtnWidget(dukansAndRest:'$recomnd',callFrom:'Products'),

            ),

            /*recommended for you list*/
            Container(
              height: 198,
              //listview of recommend for you
              margin: EdgeInsets.only(right: 16),
              child: CustomListView_recommend(),

            ),

            SizedBox(height: 20,),

            //banner2
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                    child: CustomStyle.getImageBanner("assets/banner_2.png",360,190, BoxFit.cover,)
                ),
              ],
            ),

            SizedBox(height: 20),

            //offer zone title
            DashedLineTheme(),

            SizedBox(height: 20),

            /*offer zone list*/
            Row(
              children: [
                OfferZoneCardTheme(),
                Flexible(
                  flex: 1,
                  fit: FlexFit.loose,
                  child:  Container(
                    height: 266,
                    margin: EdgeInsets.only(right: 16),
                    //listview of dukans and rest list
                    child: CustomListView_cardWithbtns(),

                  ),)
              ],
            ),

          ],
        ),

      ),
      bottomNavigationBar : CustomBottomBar()

    );
  }
}

//gridview
class CustomGridView extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {

    return GridViewUI();
  }
}

class GridViewUI extends State{
  int i;
 // GridViewUI(i);

  @override
  Widget build(BuildContext context) {
    print(i.toString());
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4
        ),
        itemCount: entries.length,
        itemBuilder: (BuildContext context,int index){

          //gridview
          return InkWell( //to get effect on click
              onTap:(){
                print("Segment Clicked");
              },
              child:Column(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(3, 3, 3, 3),
                    width: CustomDimens.cardWidth_70,
                    height: 60,
                    child: Card(
                      // color: Colors.white,
                        clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ClipRRect(
                              child: Image.asset("assets/rest.png",width: 24,height: 24,)
                              //child: CustomStyle.getImageIcons("assets/rest.png",24,Colors.transparent)
                          ),
                        ],
                      ),
                    ),

                  ),
                  Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          new Text('${entries[index]}',
                            textAlign: TextAlign.center,
                            style: CustomStyle.subTitleBlack,),
                        ],
                      )
                  )
                ],
              )

          );
        }
    );
  }
}

//listview dukans and rest
class CustomListView extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {

    return ListViewUI_dukaans();
  }
}

class ListViewUI_dukaans extends State{
  int i;

  @override
  Widget build(BuildContext context) {
    print(i.toString());
    return ListView.builder(
      scrollDirection: Axis.horizontal,
        itemCount: entries.length,
        itemBuilder: (BuildContext context,int index){
          return InkWell(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>SecondRoute(callFrom: 'HomeShop',params: 'Shops',)));
              },
              child:Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 16),
                    width: CustomDimens.cardWidth_130,
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ClipRRect(
                              child: CustomStyle.getImageBanner("assets/dukanimg.png",130,85,BoxFit.cover,)
                          ),
                        ],
                      ),
                    ),

                  ),
                  Container(
                      width: CustomDimens.cardWidth_130,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          new Text('Apna Kirana Store', textAlign: TextAlign.center, style: CustomStyle.blackBoldlCust_14,
                          softWrap: true,maxLines: 1,overflow: TextOverflow.ellipsis,),
                          SizedBox(height: 9,),
                          Row(
                            children: [
                              CustomStyle.getImageBanner("assets/location.png",16,16,BoxFit.fill,),
                              new Text('1.2km', style: CustomStyle.subTitle,),
                            ],
                          )
                        ],
                      )
                  )
                ],
              )
          );
        }
    );
  }

}

//card design 1 list
class CustomListView_recommend extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {

    return ListViewUI_recommend();
  }
}

class ListViewUI_recommend extends State{
  int i;

  @override
  Widget build(BuildContext context) {
    print(i.toString());
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: entries.length,
        itemBuilder: (BuildContext context,int index){
          return InkWell(
              onTap: (){
                Navigator.push(context,
                MaterialPageRoute(builder: (context)=>SecondRoute(callFrom:'HomeProduct',)));
              },
              child:Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 16),
                    width: CustomDimens.cardWidth_135,
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),

                      child: Column(
                        children: [
                          Container(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: EdgeInsets.all(16),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    ClipRRect(
                                          child: CustomStyle.getImageBanner("assets/product1.png",112,78, BoxFit.cover,)

                                    ),
                                  ],
                                ),
                              )
                          ),
                          Container(
                            child:Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 8,),
                                new Text('Cadbury Dairy Milk',
                                  textAlign: TextAlign.center,
                                  style: CustomStyle.blackBoldlCust_12,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                ),
                                SizedBox(height: 6,),
                                new Text('Sweets', textAlign: TextAlign.center, style: CustomStyle.subTitle,),
                                SizedBox(height: 6,),
                                new Text('₹ 49 - ₹350 ', textAlign: TextAlign.center, style: CustomStyle.boldValueText,),
                                SizedBox(height: 6,),

                              ],
                            ),
                          )
                        ],
                      )
                    ),

                  ),
                ],
              )
          );
        }
    );
  }
}

//dashed line
class DashedLineTheme extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Container(
      alignment: Alignment.center,
      margin: EdgeInsets.fromLTRB(16, 0, 16, 0),
      child: Row(
        children: [
          Container(
              width:CustomDimens.cardWidth_105,
              child: DashedLine(color: CustomColors.colorPrimaryOrange,dashWidth:5.0,height:1)
          ),
          Container(
            margin: EdgeInsets.only(left: 16,right: 16),
            child: Text(CustomString.offerZone,style: CustomStyle.boldValueText,),
          ),
          Container(
              width:CustomDimens.cardWidth_105,
              child: DashedLine(color: CustomColors.colorPrimaryOrange,dashWidth:5.0,height:1)
          ),

        ],
      ),
    );
  }
}

//offerzonecard
class OfferZoneCardTheme extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Container(
      alignment: Alignment.centerLeft,
      child: Card(
        clipBehavior: Clip.antiAlias,
        color: CustomColors.colorPrimaryBlue,
        shape: RoundedRectangleBorder(
           //borderRadius: BorderRadius.circular(10)
            borderRadius: BorderRadius.only(topLeft: Radius.zero,topRight: Radius.circular(10),bottomLeft: Radius.zero,
            bottomRight: Radius.circular(10))
        ),
        child: Container(
          width: CustomDimens.cardWidth_100,
          height: CustomDimens.cardheight_262,
          alignment: Alignment.center,
          child: Text(CustomString.offers,style: CustomStyle.whiteNormalCust_12,),
        )
      )
    );
  }
}

//customlist offers with button and What's New section
class CustomListView_cardWithbtns extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {

    return ListViewUI_cardWithbtns();
  }
}

class ListViewUI_cardWithbtns  extends State{
  int i;

  @override
  Widget build(BuildContext context) {
    print(i.toString());
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: entries.length,
        itemBuilder: (BuildContext context,int index){
          return InkWell(
              onTap: (){
              },
              child:Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 16),
                    width: CustomDimens.cardWidth_135,
                    child: Card(
                        clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: EdgeInsets.all(16),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      ClipRRect(
                                          //child: Image.asset("assets/prod2.png",width: 70,height: 70, fit: BoxFit.cover,alignment: Alignment.center,)
                                          child: CustomStyle.getImageBanner("assets/prod2.png",70,70, BoxFit.cover,)
                                      ),
                                    ],
                                  ),
                                )
                            ),

                            Container(
                              margin: EdgeInsets.only(left: 12,right: 12),
                              child:Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(height: 8,),
                                  Text('Govardhan milk', textAlign: TextAlign.start, style: CustomStyle.blackBoldlCust_12,
                                    overflow: TextOverflow.ellipsis, maxLines: 2,softWrap: true,
                                  ),
                                  SizedBox(height: 6,),
                                  new Text('1 Ltr', textAlign: TextAlign.center, style: CustomStyle.subTitle,),
                                  SizedBox(height: 6,),
                                  Text('Apna Kirana Store', textAlign: TextAlign.start, style: CustomStyle.subTitleBlack,
                                    overflow: TextOverflow.ellipsis, maxLines: 1,softWrap: true,),
                                  SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      new Text('₹ 300', textAlign: TextAlign.center, style: CustomStyle.textWithLine,),
                                      SizedBox(width: 14,),
                                      new Text('₹ 120', textAlign: TextAlign.center, style: CustomStyle.boldValueText,),
                                    ],
                                  ),
                                  SizedBox(height: 6,),
                                  Container(
                                    alignment: Alignment.center,
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(18), // if you need this
                                        side: CustomStyle.orangeOutline
                                      ),
                                      child: Container(
                                        color: Colors.white,
                                        width: CustomDimens.cardWidth_104,
                                        height: 34,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            new Text('+', textAlign: TextAlign.center, style: CustomStyle.primaryBtnTextOrange,),
                                            SizedBox(width: 24,),
                                            new Text('1', textAlign: TextAlign.center, style: CustomStyle.primaryBtnTextOrange,),
                                            SizedBox(width: 24,),
                                            new Text('-', textAlign: TextAlign.center, style: CustomStyle.primaryBtnTextOrange,),
                                          ],
                                        ),
                                      ),
                                    )
                                  ),

                                  SizedBox(height: 10,),

                                ],
                              ),
                            )
                          ],
                        )
                    ),

                  ),
                ],
              )
          );
        }
    );
  }

}

