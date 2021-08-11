//listview shops
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/material.dart';

class CustomListViewShops extends StatefulWidget{
  List<String> entries;
  CustomListViewShops({Key key,this.entries}):super(key:key);

  @override
  State<StatefulWidget> createState() {
    return ListView_shops(entries:entries);
  }
}

class ListView_shops extends State{

  List<String> entries;
  ListView_shops({Key key,this.entries});

  @override
  Widget build(BuildContext context) {

    return ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: entries.length,
        itemBuilder: (BuildContext context,int index){
          return InkWell(
              onTap: (){
                /*if on click then do task here*/
              },
              child:Container(
                margin: EdgeInsets.only(left: 16,right: 16,bottom: 8),
                width: MediaQuery.of(context).size.width,
                child: Card(
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6)
                    ),
                    child: Container(
                      margin: EdgeInsets.all(15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //image
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              ClipRRect(
                                child: CustomStyle.getImageRow('assets/dukanimg.png'),
                                //child: CustomStyle.getImageRow('assets/food.png'),
                              ),

                              Positioned(
                                top: 80,
                                child: Card(
                                    child: Padding(
                                      padding: EdgeInsets.only(left:10,right: 10,top: 4,bottom: 4),
                                      child:Text('20% off',style: CustomStyle.offerOrange_12,),
                                    )
                                ),
                              )
                            ],
                          ),
                          SizedBox(width: 10,),
                          //details
                          Flexible(
                              flex: 1,
                              fit:FlexFit.loose,
                              child: Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          new Text('Ramchandra wholesellers',
                                            textAlign: TextAlign.start,
                                            style: CustomStyle.blackBoldlCust_14,
                                            maxLines: 2,),
                                          SizedBox(height: 6,),
                                          new Text('Veggies & Fruits',
                                            textAlign: TextAlign.start,
                                            style: CustomStyle.subTitle,
                                            maxLines: 2,),
                                          SizedBox(height: 6,),
                                        ],
                                      ),

                                      SizedBox(height:16),

                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Row(
                                            children: [
                                              CustomStyle.getImageIcons("assets/location.png",12,CustomColors.colorPrimaryOrange),
                                              SizedBox(width: 4,),
                                              new Text('1.2km Goregaon(E)', style: CustomStyle.subTitle,),
                                            ],
                                          ),
                                          SizedBox(height: 6,),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.end,
                                            children: [
                                              Row(
                                                children: [
                                                  CustomStyle.getImageIcons("assets/rating.png",12,CustomColors.colorPrimaryOrange),
                                                  SizedBox(width: 4,),
                                                  new Text('4.2', style: CustomStyle.subTitleBlack,),
                                                ],
                                              ),
                                              SizedBox(width: 10,),
                                              Row(
                                                children: [
                                                  CustomStyle.getImageIcons("assets/free_delivery.png",12,CustomColors.greenlight),
                                                  SizedBox(width: 4,),
                                                  new Text(CustomString.freeDel, style: CustomStyle.greenText10,),
                                                ],
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ],
                                  )
                              ) )
                        ],
                      ),
                    )

                ),
              ),
          );
        }
    );
  }

}