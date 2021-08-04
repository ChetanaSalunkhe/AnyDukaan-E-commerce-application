import 'package:anydukaan/customdesigns/secondRoute.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/material.dart';

bool isOptionSelected=false;
int selectedIndex=0;
var cardColor = CustomColors.white;
var sideStyle = CustomStyle.blackOutline;
var textStyle = CustomStyle.blackNormalCust_14;
bool isCardEnable=false;

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

            /*call to walkthrough if callFrom select language*/
            Navigator.push(context,
                MaterialPageRoute(builder: (context)=>SecondRoute(callFrom: 'SelLang',)));
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