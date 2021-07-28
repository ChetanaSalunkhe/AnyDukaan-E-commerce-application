import 'package:anydukaan/customdesigns/secondRoute.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:anydukaan/valueresources/dimens.dart';
import 'package:flutter/material.dart';

Widget Categoryist() {
  return Card(
    child:Padding(
      padding:EdgeInsets.only(left: 8,right: 8,top: 16,bottom: 16),
      child:  ExpansionTile(
        leading:Transform(
          transform: Matrix4.translationValues(-16, 0, 0.0),
          child:ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(2)),
            child: CustomStyle.getImageBanner('assets/milk.png', 54, 54,BoxFit.cover),
          ),
        ),
        title: Transform(
          transform: Matrix4.translationValues(-32, -5, 0.0),
          child:Text('Milk Products',style: CustomStyle.blackBoldMerch_12,textAlign: TextAlign.start,),
        ),
        subtitle: Transform(
          transform: Matrix4.translationValues(-32, -5, 0.0),
          child:Text('Bread, Cake, Biscuit, Ghee, Cheese, Butter, Paneer',style: CustomStyle.subTitle_merch,
            textAlign: TextAlign.justify,maxLines: 3,softWrap: true,overflow: TextOverflow.fade,),
        ),
        trailing:  Transform(
          transform: Matrix4.translationValues(0.0, -10, 0.0),
          child:CustomStyle.getIcons(Icons.keyboard_arrow_down, 16, CustomColors.colorPrimaryOrange),
        ),
        children: <Widget>[
          Column(
            children: [
              SizedBox(height: 10,),
              Text(CustomString.cat_ret_period,style: CustomStyle.warningText_merch_12,textAlign: TextAlign.center,),
              SizedBox(height: 20,),
              GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      childAspectRatio: 0.8,
                  ),
                  shrinkWrap: true,
                  itemCount: 8,   //pass products length here
                  itemBuilder: (BuildContext context,int i){
                    return InkWell(
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context)=>SecondRoute(callFrom:'ChooseBrandsMerch')));
                      },
                        child:Container(
                          margin: EdgeInsets.only(bottom: 20),
                          child:  ListTile(
                            contentPadding: EdgeInsets.zero,
                            title: Transform(
                              transform: Matrix4.translationValues(0, 0, 0.0),
                              child: Padding(
                                padding: EdgeInsets.all(0),
                                child: ClipRRect(
                                  child: Image.asset("assets/milk.png",width: 54,height: 54,),
                                ),
                              ),
                            ),
                            subtitle: Transform(
                                transform: Matrix4.translationValues(0, 5, 10.0),
                                child:Text('Milk Powder mbfjahfbhaf', style: CustomStyle.blackBoldMerch_10,
                                  textAlign: TextAlign.center, softWrap: true,
                                  overflow: TextOverflow.ellipsis,maxLines: 1,),
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
