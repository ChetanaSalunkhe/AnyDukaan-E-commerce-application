import 'package:anydukaan/customdesigns/bottomSheetDialogDesign.dart';
import 'package:anydukaan/customdesigns/customButtons.dart';
import 'package:anydukaan/customdesigns/radioGroupDesign.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuOptionPopup extends State{
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height,
        color: Colors.transparent,
        child: new Center(
          child: Column(
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
                        Text(CustomString.menuOption,style: CustomStyle.boldValueText,
                          textAlign: TextAlign.center,)
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
               Container(
                height: MediaQuery.of(context).size.height-200,
                child: CheckboxWidget(),
              )
            ],
          ),
        )
    );
  }

}
class CheckboxWidget extends StatefulWidget {
  @override
  CheckboxWidgetState createState() => new CheckboxWidgetState();
}

class CheckboxWidgetState extends State {

  Map<String, bool> values = {
    'All': false,
    'Breakfast': false,
    'Chinese': false,
    'Snacks': false,
    'Starters': false,
    'Main Course': false,
    'Thali': false,
  };

  Map<String, bool> values_groceries = {
    'All': false,
    'Milk Products': false,
    'Bakery': false,
    'Snacks': false,
    'Flour Grains': false,
    'Stationary': false,
    'Skin Care': false,
    'Toiletries': false,
  };

  var tmpArray = [];

  getCheckboxItems(){

    values.forEach((key, value) {
      if(value == true)
      {
        tmpArray.add(key);
      }
    });

    // Printing all selected items on Terminal screen.
    print(tmpArray);
    // Here you will get all your selected Checkbox items.

    // Clear array after use.
    tmpArray.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Column (children: <Widget>[
      Flexible(
        flex: 1,
        fit: FlexFit.tight,
        child :
        ListView(
          scrollDirection: Axis.vertical,
          children: values_groceries.keys.map((String key) {
            return Theme(
                data: CustomStyle.getThemeCheckBox_RadioButton,
                child: CheckboxListTile(
                  contentPadding: EdgeInsets.only(top: 0,bottom: 0),
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Transform(
                    transform: Matrix4.translationValues(-12, 0, 0.0),
                    child: new Text(key,style: CustomStyle.blackNormalCust_14,),
                  ),
                  //value: values[key],   //restaurants
                  value: values_groceries[key],   //grocery
                  activeColor: CustomColors.colorPrimaryBlue,
                  checkColor: Colors.white,
                  onChanged: (bool value) {
                    setState(() {
                      //values[key] = value;
                      values_groceries[key] = value;
                    });
                  },
                ));
          }).toList(),
        ),
      ),]);
  }
}