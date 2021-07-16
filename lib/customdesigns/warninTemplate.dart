import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/material.dart';

Container GetWarningTemplate(String warningMessage, int maxlines){
  return Container(
    child: Card(
        color: CustomColors.red_card_light,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(6))
        ),
        child: Container(
          margin: EdgeInsets.only(left: 16,right: 16,top: 8,bottom: 8),
          child: Row(
            children: [
              Flexible(
                flex: 1,
                child: CustomStyle.getIcons(Icons.error_outline, 16, CustomColors.red),
              ),
              Flexible(
                  flex: 9,
                  child:  Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Text('$warningMessage',style: CustomStyle.warningText,softWrap: true,overflow: TextOverflow.fade,
                      textAlign: TextAlign.justify,maxLines: maxlines,),
                  )
              ),
            ],
          ),
        )
    ),
  );
}

Container GetWarningTemplate_(String warningMessage){
  return Container(
    child: Card(
        color: CustomColors.red_card_light,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(6))
        ),
        child: Container(
          margin: EdgeInsets.only(left: 16,right: 16,top: 8,bottom: 8),
          child: Row(
            children: [
              Flexible(
                flex: 1,
                child: CustomStyle.getIcons(Icons.error_outline, 16, CustomColors.red),
              ),
              Flexible(
                  flex: 9,
                  child:  Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Text(CustomString.dmsg_warning_sorry,style: CustomStyle.warningText,softWrap: true,overflow: TextOverflow.fade,
                      textAlign: TextAlign.justify,maxLines: 3,),
                  )
              ),
            ],
          ),
        )
    ),
  );
}
