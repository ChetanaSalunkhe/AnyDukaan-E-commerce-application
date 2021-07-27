import 'package:anydukaan/customdesigns/cardTemplateSetup.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/material.dart';
import 'package:progress_timeline/progress_timeline.dart';

class ProductSetup extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return ProductSetup_();
  }

}

class ProductSetup_ extends State{

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 18,),
          Transform(
            transform: Matrix4.translationValues(10, 0, 0.0),
            child:Text(CustomString.setProd,style: CustomStyle.blackBoldMerch_12,textAlign: TextAlign.start,),
          ),
          SizedBox(height: 16,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GetTemplate(CustomString.scanBarcode,'assets/scan.png'),
              GetTemplate(CustomString.chooseTemplate,'assets/template.png'),
              GetTemplate(CustomString.createNew,'assets/createnew.png'),
            ],
          ),
        ],
      )
    );
  }
}
