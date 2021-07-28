import 'package:anydukaan/customdesigns/cardKhataConsumer.dart';
import 'package:anydukaan/customdesigns/customButtons.dart';
import 'package:anydukaan/customdesigns/secondRoute.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/material.dart';

int selectedIndex=0;

class GetKhataList extends StatelessWidget{
  List<List<String>> entries;
  bool isBtnVisible=false;
  GetKhataList({Key key,this.entries,this.isBtnVisible});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index){
          return InkWell(
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>SecondRoute(callFrom: 'KhataCustDtlsMerch',)));
            },
            child: Container(
              margin: EdgeInsets.only(top: 10,),
              child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child:Padding(
                    padding: EdgeInsets.only(bottom: 12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GetCardKhataConsumer(entries,index),
                        SizedBox(height: 12,),
                        /*buttons reject and accept*/
                        Visibility(
                          visible: isBtnVisible,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Flexible(
                                  flex: 1,
                                  fit: FlexFit.tight,
                                  child: InkWell(
                                    onTap: (){
                                      /*api call here status khata reject */
                                    },
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 16,right: 16),
                                      child: BtnWithArrow(CustomString.reject,context,328,50,false,CustomStyle.orangeOutline,
                                          CustomStyle.orange_merch_16,CustomColors.colorPrimaryOrange,Icons.arrow_forward),),
                                  )
                              ),
                              Flexible(
                                  flex: 1,
                                  fit: FlexFit.tight,
                                  child: InkWell(
                                    onTap: (){
                                      /*api call here status khata accept */
                                    },
                                    child: BtnContinue(CustomString.accept, context, 'acceptKhata'),
                                  )),
                            ],
                          ),),
                      ],
                    ),
                  )
              ),
            ),
          );
        });
  }

}