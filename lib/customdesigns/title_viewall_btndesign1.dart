//texttitle and ViewAll button widget
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/cupertino.dart';

class Title_ViewBtnWidget extends StatefulWidget{
  String dukansAndRest="";

  Title_ViewBtnWidget({Key key,this.dukansAndRest}):super(key: key);

  @override
  State<StatefulWidget> createState() {
    print('$dukansAndRest');

    return Title_ViewBtnWidgetUI(dukansAndRest: '$dukansAndRest');
  }
}

class Title_ViewBtnWidgetUI extends State{
  String dukansAndRest="";

  Title_ViewBtnWidgetUI({Key key, this.dukansAndRest});

  @override
  Widget build(BuildContext context) {

    //print('$dukansAndRest');

    return Column(
      children: [
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 16),
              alignment: Alignment.centerLeft,
              //child: Text(CustomString.dukansAndRest,style: CustomStyle.boldValueText,),
              child: Text('$dukansAndRest',style: CustomStyle.boldValueText,),
            ),
            SizedBox(width: 50),
            Flexible(
                flex: 1,
                fit: FlexFit.loose,
                child:  Container(
                  margin: EdgeInsets.only(right: 16),
                  alignment: Alignment.centerRight,
                  child: Text(CustomString.viewAll,style: CustomStyle.primaryBtnTextOrange_12,textAlign: TextAlign.right,),
                ))
          ],
        ),

      ],

    );

  }

}