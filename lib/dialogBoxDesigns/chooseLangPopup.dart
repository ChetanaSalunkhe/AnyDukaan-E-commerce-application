import 'package:anydukaan/customdesigns/customButtons.dart';
import 'package:anydukaan/customdesigns/warninTemplate.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/material.dart';

final List<String> entries = <String>["English","Hindi","Marathi","Kannada"];

bool isOptionSelected=false;
int selectedIndex=0;
var cardColor = CustomColors.white;
var sideStyle = CustomStyle.blackOutline;
var textStyle = CustomStyle.blackNormalCust_14;
bool isCardEnable=false;

class ChooseLangPopup extends State{
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
                    flex: 6,
                    fit: FlexFit.tight,
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(CustomString.changeLanguage,style: CustomStyle.boldValueText,
                          textAlign: TextAlign.center,)
                      ],
                    ),
                  ),

                  Flexible(
                      flex: 4,
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
              SizedBox(height: 30,),
              Container(
                margin: EdgeInsets.only(left: 16,right: 16),
                child:OptionsList_(entries: entries),
              )
            ],
          ),
        ));
  }

}
class OptionsList_ extends StatefulWidget{
  List<String> entries;
  OptionsList_({Key key,this.entries}):super(key:key);

  @override
  State<StatefulWidget> createState() {
    return OptionsList(entries: entries);
  }

}

class OptionsList extends State{
  List<String> entries;
  OptionsList({Key key,this.entries});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      itemCount: entries.length,    //pass merchants list length here
      itemBuilder: (BuildContext context, int i){
        return InkWell(
          onTap: (){
            /*perform further task of calling api*/
            setState(() {
              selectedIndex = i;
              if(isOptionSelected){
                isOptionSelected = false;
              }else{
                isOptionSelected = true;
              }
            });
          },
          child: Container(
            height: 50,
            margin: EdgeInsets.only(top: 12),
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
                    Text(entries[i].toString(),
                      style: selectedIndex != null && selectedIndex == i? CustomStyle.whiteBold14:CustomStyle.blackNormalCust_14,
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