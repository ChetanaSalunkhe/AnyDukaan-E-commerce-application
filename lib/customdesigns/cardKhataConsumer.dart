import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/cupertino.dart';

Container GetCardKhataConsumer(List<List<String>> entries,int index){
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 16,top: 16,right: 16),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(50)),
            child: CustomStyle.getImageBanner(entries[index].elementAt(3), 72, 72, BoxFit.cover),
          ),),

        Flexible(
          flex: 1,
          child: Padding(
            padding: EdgeInsets.only(top: 16,right: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(entries[index].first,style: CustomStyle.blackBoldMerch_14,textAlign: TextAlign.start,),
                SizedBox(height: 4,),
                Text(entries[index].elementAt(1),style: CustomStyle.subTitle_merch,textAlign: TextAlign.justify,
                  overflow: TextOverflow.fade,maxLines: 5,softWrap: true,),
                SizedBox(height: 6,),
                Text(entries[index].elementAt(2),style: CustomStyle.blackBoldMerch_16,textAlign: TextAlign.start,),
              ],
            ),
          ),),
      ],
    ),
  );
}