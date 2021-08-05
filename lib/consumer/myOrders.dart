import 'package:anydukaan/customdesigns/bottomSheetDialogDesign.dart';
import 'package:anydukaan/customdesigns/bottombardesign.dart';
import 'package:anydukaan/customdesigns/customButtons.dart';
import 'package:anydukaan/customdesigns/myCustomAppBar.dart';
import 'package:anydukaan/customdesigns/myCustomAppBar2.dart';
import 'package:anydukaan/customdesigns/secondRoute.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:anydukaan/valueresources/dimens.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

final List<String> entries = <String>["Restaurant","Grocery","Vegetables"];
final List<String> entries_ = <String>[];

class MyOrders extends State {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.background_all,
      appBar: CustomAppBarWithSearch(title:'Orders',searchHint:'Search here...',isLeadingVisible:true,isActionVisible:false,img: 'assets/audio_search.png'),
      body: SingleChildScrollView(
          clipBehavior: Clip.antiAlias,
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              BlankState(msg:'No Orders Placed!', isBtnVisibile:true,img: 'assets/blankstate.png',),
            ],
          )
      ),
      bottomSheet: CustomBottomBar(),
    );
  }
}

class DisplayWidget_ extends StatefulWidget{
  int lengthOfList;
  DisplayWidget_({Key key,this.lengthOfList}):super(key: key);

  @override
  State<StatefulWidget> createState() {
   /* print(lengthOfList);
    switch(lengthOfList){
      case 0:
        return BlankState();
        break;

    }*/
  }

}

class BlankState extends StatelessWidget{
  String msg="";
  bool isBtnVisibile=true;
  String img="assets/blankstate.png";
  BlankState({Key key,this.msg,this.isBtnVisibile,this.img}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 55),
          Container(
            alignment: Alignment.center,
            //margin: EdgeInsets.only(left: 50,right:50),
            child: CustomStyle.getImageBanner('$img', 250, 216, BoxFit.scaleDown),
          ),
          Padding(
            padding:EdgeInsets.only(top: 26),
            child: Text('$msg',style: CustomStyle.blackNormalCust_14,textAlign: TextAlign.center,),),
          Visibility(
            visible: isBtnVisibile,
              child: Container(
                  margin: EdgeInsets.only(top: 30),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context)=>SecondRoute(callFrom: 'AllOrdersList',)));
                    },
                    child: BtnWithArrow('See Past Orders',context,280,50,false,CustomStyle.orangeOutline,
                        CustomStyle.primaryBtnTextOrange,CustomColors.colorPrimaryOrange,Icons.arrow_forward),
                  )
              )),
        ],
      ),
    );
  }

}




