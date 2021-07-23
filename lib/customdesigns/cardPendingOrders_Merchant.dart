import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/material.dart';

class PendingOrdMerchList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 3,
        itemBuilder: (BuildContext context, int index){
        return Padding(
            padding: EdgeInsets.only(left: 16,right: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomStyle.GetDivider(),
                SizedBox(height: 18,),
                Row(
                  children: [
                    Flexible(
                      flex: 7,
                      fit: FlexFit.tight,
                      child:  Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Products ordered (01)',style: CustomStyle.blackNormalMerch_16,textAlign: TextAlign.start,),
                          Text('Forest Heights, Yashodham, Dindoshi Depot Goregoan (E) - 0.2KM away',
                            style: CustomStyle.subTitle_merch,
                            maxLines: 4,
                            softWrap: true,
                            overflow: TextOverflow.fade,
                            textAlign: TextAlign.justify,),
                        ],
                      ),),
                    Flexible(
                      flex: 3,
                      fit: FlexFit.tight,
                      child: Text('₹ 880',style: CustomStyle.blackBoldMerch_16,textAlign: TextAlign.end,),),
                  ],
                ),
                SizedBox(height: 18,),
              ],
            ),);
        });
  }

}