import 'package:anydukaan/customdesigns/secondRoute.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:anydukaan/valueresources/dimens.dart';
import 'package:flutter/material.dart';

Widget QuestionsList(String quest) {
  return Card(
    child:Padding(
      padding:EdgeInsets.only(left: 8,right: 8,),
      child:  ExpansionTile(
        title: Transform(
          transform: Matrix4.translationValues(-16, 0, 0.0),
          child:Text('$quest',style: CustomStyle.blackBoldMerch_12,textAlign: TextAlign.start,),
        ),
        trailing:  Transform(
          transform: Matrix4.translationValues(0.0, 0, 0.0),
          child:CustomStyle.getIcons(Icons.keyboard_arrow_down, 16, CustomColors.colorPrimaryOrange),
        ),
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10,),
              Text(CustomString.steps_1,style: CustomStyle.subTitle_merch_14,textAlign: TextAlign.start,),
              SizedBox(height: 10,),
              GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    childAspectRatio: 0.8,
                  ),
                  shrinkWrap: true,
                  itemCount: 2,   //pass products length here
                  itemBuilder: (BuildContext context,int i){
                    return InkWell(
                        onTap: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context)=>SecondRoute(callFrom:'ChooseBrandsMerch')));
                        },
                        child:Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child:  ListTile(
                            contentPadding: EdgeInsets.zero,
                            title: Transform(
                              transform: Matrix4.translationValues(0, 0, 0.0),
                              child: Padding(
                                padding: EdgeInsets.all(0),
                                child: ClipRRect(
                                  //child: Image.asset("assets/milk.png",width: 54,height: 54,),
                                  child: CustomStyle.getIcons(Icons.video_call_outlined, 55, CustomColors.colorPrimaryBlue),
                                ),
                              ),
                            ),
                          ),
                        )
                    );
                  }),
            ],
          ),
        ],
      ),
    ),
  );
}
