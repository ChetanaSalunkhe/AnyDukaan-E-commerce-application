import 'package:anydukaan/consumer/myCart.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/material.dart';

class Product {
  String name;
  bool isCheck = false;
  Product(this.name, this.isCheck);
}

class OrdCardTemplate extends State{
  bool checkBoxval = false;
  List<String> entries;
  OrdCardTemplate({Key key,this.entries,this.checkBoxval});

  Product product;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
      itemCount: entries.length,
      itemBuilder: (BuildContext context, int index){
        return Container(
          width: MediaQuery.of(context).size.width,
          height: 77,
          margin: EdgeInsets.only(left: 16, top: 16,right:16,),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Visibility(
                visible: checkBoxval,
                  child: Padding(
                    padding: EdgeInsets.only(left: 7,top: 5,bottom: 5),
                    child:
                    Theme(
                        data: CustomStyle.getThemeCheckBox_RadioButton,
                        child: Checkbox(
                            value: checkBoxval,
                            onChanged: (bool value) {
                              setState(() {
                                product.isCheck = value;
                              });
                            })),/*Theme(
                      data: CustomStyle.getThemeCheckBox_RadioButton,
                      child: Checkbox(
                        checkColor: CustomColors.colorPrimaryBlue,
                        onChanged: (bool value) {
                        },
                        value: false,
                      ),
                    ),*/
                  ),),
              Padding(
                padding: EdgeInsets.only(right: 7,top: 5,bottom: 5),
                child: CustomStyle.getImageBanner('assets/prod2.png', 49, 49,BoxFit.cover),
              ),
              Flexible(
                flex: 1,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(top: 16,right: 16,),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Flexible(
                              flex:8,
                              fit: FlexFit.tight,
                              child: Text('Govardhan Milk',style: CustomStyle.blackBoldlCust_14,
                                textAlign: TextAlign.start,),),
                            Flexible(
                                flex:2,
                                fit: FlexFit.tight,
                                child: Text('₹ 30',style: CustomStyle.blackBoldlCust_14,textAlign: TextAlign.end,)),
                          ],
                        ),),
                        Padding(
                          padding: EdgeInsets.only(top: 3,right: 16),
                          child:  Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Flexible(
                                flex:8,
                                fit: FlexFit.tight,
                                child: Text('100 g',style: CustomStyle.subTitle,
                                  textAlign: TextAlign.start,),),
                              Flexible(
                                  flex:2,
                                  fit: FlexFit.tight,
                                  child: Text('Return',style: CustomStyle.warningText,textAlign: TextAlign.end,)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )),
            ],
          ),
          ),
        );
      });
  }

}