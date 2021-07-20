//blackNormalCust_14 and ViewAll button widget
import 'package:anydukaan/consumer/shoplisting.dart';
import 'package:anydukaan/customdesigns/secondRoute.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Title_ViewBtnWidget extends StatefulWidget{
  String dukansAndRest="", callFrom ="";

  Title_ViewBtnWidget({Key key,this.dukansAndRest,this.callFrom}):super(key: key);

  @override
  State<StatefulWidget> createState() {
    print('$dukansAndRest');

    return Title_ViewBtnWidgetUI(dukansAndRest: '$dukansAndRest',callFrom:'$callFrom');
  }
}

class Title_ViewBtnWidgetUI extends State{
  String dukansAndRest="", callFrom ="";

  Title_ViewBtnWidgetUI({Key key, this.dukansAndRest,this.callFrom});

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
              child: Text('$dukansAndRest',style: CustomStyle.boldValueText,),
            ),
            SizedBox(width: 50),
            Flexible(
                flex: 1,
                fit: FlexFit.loose,
                child:  Container(
                  margin: EdgeInsets.only(right: 16),
                  alignment: Alignment.centerRight,
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SecondRoute(callFrom: callFrom,)));
                    },
                    child: Text(CustomString.viewAll,style: CustomStyle.primaryBtnTextOrange_12,textAlign: TextAlign.right,),
                  )
                ))
          ],
        ),

      ],

    );

  }

}
