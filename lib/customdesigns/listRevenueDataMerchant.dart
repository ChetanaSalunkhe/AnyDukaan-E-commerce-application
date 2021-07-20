import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/material.dart';

class ListRevenueData extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 4,
      itemBuilder: (BuildContext context, int index){
        return InkWell(
          child: Column(
            children: [
              Divider(
                height: 1,
                thickness: 1.5,
                color: CustomColors.greyline,
              ),
              Container(
                margin: EdgeInsets.only(left: 11,bottom: 16,top: 16,right: 11),
                child: Row(
                  children: [
                    Flexible(
                      flex:2,
                        fit: FlexFit.tight,
                        child: CustomStyle.getLogoImages('assets/prod2.png', 40, 40)),
                    Flexible(
                        flex:6,
                        fit: FlexFit.tight,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Milk Products',style: CustomStyle.blackBoldMerch_16,),
                            Text('42 Orders',style: CustomStyle.blackNormalMerch_12,)
                          ],
                        )),
                    Flexible(
                        flex:2,
                        fit: FlexFit.tight,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('₹ 987',style: CustomStyle.blackBoldMerch_16,textAlign: TextAlign.end,),
                            Text('58%',style: CustomStyle.blackNormalMerch_12,textAlign: TextAlign.end,)
                          ],
                        )),
                  ],
                ),
              ),
            ],
          )
        );
    }
    );
  }

}