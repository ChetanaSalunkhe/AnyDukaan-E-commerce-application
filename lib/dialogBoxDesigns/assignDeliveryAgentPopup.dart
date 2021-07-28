import 'package:anydukaan/customdesigns/customButtons.dart';
import 'package:anydukaan/customdesigns/warninTemplate.dart';
import 'package:anydukaan/merchant/myProducts.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/material.dart';

final List<String> entries = <String>["Restaurant","Grocery","Vegetables","Restaurant","Grocery"];

bool isAgentSelected=false;
int selectedIndex=0;
var cardColor = CustomColors.white;
var sideStyle = CustomStyle.blackOutline;
var textStyle = CustomStyle.blackNormalMerch_14;

class AssignDeliveryAgentPopup extends State{
  /*here get data from server list and display delivery agent's names*/

  @override
  Widget build(BuildContext context) {
    return new Container(
        height: 367.0,
        color: Colors.transparent,
        child: new Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //row for text and cross button
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    flex: 7,
                    fit: FlexFit.tight,
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(CustomString.assignAgent,style: CustomStyle.boldValueText, textAlign: TextAlign.center,)
                      ],
                    ),
                  ),

                  Flexible(
                      flex: 3,
                      fit: FlexFit.loose,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 16),
                            child: IconButton(
                              alignment: Alignment.centerRight,
                              icon: CustomStyle.getImageIcons('assets/close.png',10,CustomColors.black),
                              iconSize: 50,
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),)
                        ],
                      )),
                ],
              ),
              SizedBox(height: 20,),
              Container(
                margin: EdgeInsets.only(left: 16,right: 16,top: 12),
                child:AgentsList_(entries: entries,),
              ),
            ],
          ),
        ));
  }

}

class AgentsList_ extends StatefulWidget{
  List<String> entries;
  AgentsList_({Key key,this.entries}):super(key:key);

  @override
  State<StatefulWidget> createState() {
    return AgentsList(entries: entries);
  }

}

class AgentsList extends State{
  List<String> entries;
  AgentsList({Key key,this.entries});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      itemCount: entries.length,    //pass merchants list length here
      itemBuilder: (BuildContext context, int i){
        return InkWell(
          onTap: (){
            setState(() {
              selectedIndex = i;
              if(isAgentSelected){
                isAgentSelected = false;
              }else{
                isAgentSelected = true;
              }
            });
          },
          child: Container(
            height: 50,
            child: Card(
                color: selectedIndex != null && selectedIndex == i? CustomColors.colorPrimaryOrange:CustomColors.white,
                shadowColor: CustomColors.black,
                elevation: 1,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  side: selectedIndex != null && selectedIndex == i? CustomStyle.orangeOutline:CustomStyle.blackOutline,
                ),
                child:Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Chetana Salunkhe',
                      style: selectedIndex != null && selectedIndex == i? CustomStyle.whiteBoldMerch_14:CustomStyle.blackNormalMerch_14,
                      textAlign: TextAlign.center,),
                  ],
                )
            ),
          ),
        );
      },
    );
  }
}