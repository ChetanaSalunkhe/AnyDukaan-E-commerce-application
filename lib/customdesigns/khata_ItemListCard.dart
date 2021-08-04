import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Container getmyListCard(String itemtitle, String qnt, String itemrate,String date,BuildContext context){
  return Container(
      margin: EdgeInsets.only(top: 3),
      child: Card(
          color: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                  Radius.circular(10)
              )
          ),
          child: Padding(
            padding: EdgeInsets.only(left: 16,right: 16,top: 10,bottom: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomStyle.getLogoImages('assets/prod2.png', 60, 60),
                    SizedBox(width: 3,),
                    Flexible(
                      flex: 1,
                        child: Container(
                          child:  Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Flexible(
                                    flex: 7,
                                    fit: FlexFit.tight,
                                    child: Text('$itemtitle',style: CustomStyle.blackBoldlCust_14,textAlign: TextAlign.left,
                                      softWrap: true,overflow: TextOverflow.fade,maxLines: 2,),),
                                  Flexible(
                                    flex: 3,
                                    fit: FlexFit.tight,
                                    child: Text('$itemrate',style: CustomStyle.blackBoldlCust_14,textAlign: TextAlign.right,),),

                                ],
                              ),
                              SizedBox(height: 5,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Flexible(
                                    flex: 7,
                                    fit: FlexFit.tight,
                                    child:  Text('$qnt',style: CustomStyle. subTitle,textAlign: TextAlign.left,),),

                                  Flexible(
                                    flex: 3,
                                    fit: FlexFit.tight,
                                    child: Text('$date',style: CustomStyle. subTitle,textAlign: TextAlign.right,),),

                                ],
                              ),
                            ],
                          ),
                        )),

                  ],
                ),
                //SizedBox(height: 11,),



              ],
            ),
          )
      )
  );
}