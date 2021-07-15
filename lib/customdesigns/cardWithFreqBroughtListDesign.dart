import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:anydukaan/customdesigns/customButtons.dart';
import 'package:flutter/material.dart';

class ListViewFreq_cardWithbtns  extends State{
 List<String> entries;
 ListViewFreq_cardWithbtns({Key key, this.entries});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: entries.length,
        itemBuilder: (BuildContext context,int index){
          return InkWell(
              onTap: (){
              },
              child:Column(
                children: [
                  Container(
                    width: 156,
                    child: Card(
                        margin: EdgeInsets.only(right: 16),
                        clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),

                        child: Column(
                          children: [
                            Container(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: EdgeInsets.all(16),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      ClipRRect(
                                          child: Image.asset("assets/prod2.png",width: 70,height: 70,
                                            fit: BoxFit.cover,alignment: Alignment.center,)
                                      ),
                                    ],
                                  ),
                                )
                            ),

                            Container(
                              margin: EdgeInsets.only(left: 12,right: 12),
                              child:Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 8,),
                                  new Text('Amul Masti Dahi', textAlign: TextAlign.center,
                                    style: CustomStyle.textsemiboldblackTitle_12,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                  ),
                                  SizedBox(height: 6,),
                                  new Text('Dairy Products', textAlign: TextAlign.center, style: CustomStyle.subTitle,),
                                  SizedBox(height: 6,),
                                  SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      Flexible(
                                        flex: 8,
                                        fit: FlexFit.tight,
                                        child: new Text('₹ 120', textAlign: TextAlign.start, style: CustomStyle.boldValueText,),
                                      ),
                                      Flexible(
                                        flex: 8,
                                        fit: FlexFit.tight,
                                        child: new Text('20% off', textAlign: TextAlign.end, style: CustomStyle.offerTitleText,),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 6,),
                                  BtnPlusMinus(),

                                  SizedBox(height: 10,),

                                ],
                              ),
                            ),

                          ],
                        )
                    ),

                  ),
                ],
              )
          );
        }
    );
  }

}