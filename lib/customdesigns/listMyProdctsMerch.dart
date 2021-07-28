import 'package:anydukaan/beanClasses/itemsBean.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

bool switchStatus=true;
String valProd="In Stock";
var textStyle=CustomStyle.greenText12_merch;

class MyProdListMerch extends State{
  List<ItemBeans> entries;

  MyProdListMerch({Key key,this.entries});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
        itemBuilder: (BuildContext context, int index){
        return Container(
          margin: EdgeInsets.only(top: 10),
          child: Card(
            //color: entries[index].switchStatus ? CustomColors.white:CustomColors.greyline,
            color: switchStatus ? CustomColors.white:CustomColors.greyline,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            child: Padding(
              padding: EdgeInsets.all(11),
              child: Row(
                children: [
                  CustomStyle.getImageBanner('assets/prod2.png',55,55,BoxFit.cover),
                  Flexible(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Flexible(
                                flex:9,
                                  fit: FlexFit.tight,
                                  child: Text('Aashirward Atta 5Kg',style: CustomStyle.blackBoldMerch_12,textAlign: TextAlign.start,
                                  softWrap: true,overflow: TextOverflow.fade,maxLines: 2,)),
                              Flexible(
                                  flex:1,
                                  fit: FlexFit.tight,
                                  child: CustomStyle.getImageIcons('assets/pctg.png', 16, CustomColors.colorPrimaryBlue)),
                            ],
                          ),
                          Text('₹ 250',style: CustomStyle.blackNormalMerch_12,textAlign: TextAlign.start,
                            softWrap: true,overflow: TextOverflow.fade,maxLines: 1,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Flexible(
                                  flex:7,
                                  fit: FlexFit.tight,
                                  child: Text('$valProd',
                                    style: textStyle,
                                    textAlign: TextAlign.start,
                                    softWrap: true,overflow: TextOverflow.fade,maxLines: 1,)
                              ),
                              Flexible(
                                  flex:3,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    width: 35,
                                    child: FlutterSwitch(
                                      width: 35.0,
                                      height: 20.0,
                                      toggleSize: 16,
                                      value: switchStatus,
                                      borderRadius: 30.0,
                                      padding: 2.0,
                                      toggleColor: Color.fromRGBO(225, 225, 225, 1),
                                      activeColor: CustomColors.colorPrimaryBlue,
                                      inactiveColor: CustomColors.greydark,
                                      onToggle: (val) {
                                        setState(() {
                                          switchStatus = val;
                                          if(switchStatus){
                                            valProd = 'In Stock';
                                            textStyle = CustomStyle.greenText12_merch;
                                          }else{
                                            valProd = 'Processing';
                                            textStyle = CustomStyle.warningText_merch_12;
                                          }
                                        });
                                      },
                                    ),
                                  )
                              ),
                            ],
                          ),
                        ],
                      )),
                ],
              ),
            )
          )
        );
        });
  }

}