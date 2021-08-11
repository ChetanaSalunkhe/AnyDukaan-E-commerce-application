import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/material.dart';
import 'package:progress_timeline/progress_timeline.dart';

class UploadImg extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return UploadImageSetup();
  }

}

class UploadImageSetup extends State{

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(6)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              width: MediaQuery.of(context).size.width,
              height: 282,
              decoration: CustomStyle.getBoxShadow_gradient(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomStyle.getIcons(Icons.image_outlined, 70, CustomColors.colorPrimaryBlue),
                  Text(CustomString.tapToUpload,style: CustomStyle.blue_merch_bold_12,textAlign: TextAlign.center,),
                ],
              )
          ),
        ],
      )
    );
  }

}
