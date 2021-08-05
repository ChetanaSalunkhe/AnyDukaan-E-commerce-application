import 'package:anydukaan/customdesigns/cardSetupMerch.dart';
import 'package:anydukaan/customdesigns/customButtons.dart';
import 'package:anydukaan/customdesigns/radioGroupDesign.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:check_radio_group/model/group_style.dart';
import 'package:check_radio_group/model/item_group.dart';
import 'package:check_radio_group/radio/radio_group.dart';
import 'package:checkbox_formfield/checkbox_list_tile_formfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:group_radio_button/group_radio_button.dart';
import 'package:progress_timeline/progress_timeline.dart';

bool isUpiBoxVisible=true;
bool isKhataBoxVisible=true;
bool isRadiuswiseVisible=false;
bool isAreawiseVisible=true;
int _count_radius = 1;
int _count_charge = 1;
int _count_delboy = 1;
int _count_area = 1;

class DeliveryOpt extends StatefulWidget{
  ProgressTimeline progressTimeline;

  @override
  State<StatefulWidget> createState() {
    return DeliveryOptionSetup();
  }

}

class DeliveryOptionSetup extends State{

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: ScrollPhysics(),
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 18,),
          Transform(
            transform: Matrix4.translationValues(10, 0, 0.0),
            child:Text(CustomString.queDelOpt,style: CustomStyle.blackBoldMerch_12,textAlign: TextAlign.start,),
          ),
          SizedBox(height: 16,),
          Transform(
            transform: Matrix4.translationValues(-16, 0, 0.0),
            child: Theme(
              data:CustomStyle.getThemeCheckBox_RadioButton,
              child:AreaOptions(),
            ),
          ),
          SizedBox(height: 16,),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Transform(
                transform: Matrix4.translationValues(10, 0, 0.0),
                child:Text(CustomString.queDelOpt1,style: CustomStyle.blackBoldMerch_12,textAlign: TextAlign.start,),
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        flex: 1,
                          fit: FlexFit.tight,
                          child:Padding(
                            padding: EdgeInsets.only(right: 8),
                            child:  CustomStyle.getEditTextWithIcon(CustomString.start,
                                16, 1, TextInputType.text, Icons.keyboard_arrow_down, CustomColors.colorPrimaryBlue, 14, '8:00 AM ',
                                CustomColors.colorblackmerch,true),
                          )
                      ),
                      Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: Padding(
                            padding: EdgeInsets.only(left: 8),
                            child:  CustomStyle.getEditTextWithIcon(CustomString.end,
                                14, 1, TextInputType.text, Icons.keyboard_arrow_down, CustomColors.colorPrimaryBlue, 16, '8:00 PM ',
                                CustomColors.colorblackmerch,true),
                          )
                      ),
                    ],
                  )
                ),
              ),
            ],
          ),
          SizedBox(height: 16,),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Transform(
                transform: Matrix4.translationValues(10, 0, 0.0),
                child:Text(CustomString.queDelOpt2,style: CustomStyle.blackBoldMerch_12,textAlign: TextAlign.start,),
              ),
              Container(
                width: 140,
                child: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: CustomStyle.getEditTextBorder('₹ 20', 14, 1),),
              ),
            ],
          ),
          SizedBox(height: 16,),
          Column(
            children: [
              CWeight(),
              AddDelBoy(),

            ],
          ),
          SizedBox(height: 50,),
        ],
      ),
    );
  }
}

/*charge and weight UI*/
class CWeight extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return GetChargeByWeight();
  }

}

class GetChargeByWeight extends State{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Transform(
          transform: Matrix4.translationValues(-12, 0, 0.0),
          child:Column(
            children: [
              Theme(
                data:  CustomStyle.getThemeCheckBox_RadioButton,
                child: CheckboxListTileFormField(
                  title:CustomStyle.CheckboxTitle(CustomString.chrgwt),
                  checkColor: CustomColors.white,
                  activeColor: CustomColors.colorPrimaryBlue,
                  onSaved: (bool value) {
                  },
                  validator: (bool value) {
                    if (value) {
                      return null;
                    } else {
                      return 'False!';
                    }
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16),
                child: Visibility(
                    visible: isKhataBoxVisible,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                            onTap:(){
                              setState(() {
                                _count_charge++;
                              });
                            },
                            child:Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text('+ Add', style: CustomStyle.orangeMerch_12,textAlign: TextAlign.end,),
                              ],
                            )
                        ),
                        SizedBox(height: 10,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GetCardSetupTile(CustomString.weight,CustomString.charge),
                            /*card setup*/
                            Container(
                              height: 100,
                              child: ListView.builder(
                                shrinkWrap: true,
                                itemCount: _count_charge,
                                itemBuilder: (BuildContext context,int index){
                                  return GetCardSetup('5 KG','₹ 10',context);
                                },
                                //children: _chargeCard,
                                //scrollDirection: Axis.vertical,
                              ),
                            )
                          ],
                        ),

                      ],
                    )
                ),),
            ],
          )
      ),
    );
  }

}

/*add delivery boy UI*/
class AddDelBoy extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return AddDelBoy_();
  }

}

class AddDelBoy_ extends State{
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Transform(
        transform: Matrix4.translationValues(-12, 0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Theme(
              data:  CustomStyle.getThemeCheckBox_RadioButton,
              child: CheckboxListTileFormField(
                title:CustomStyle.CheckboxTitle(CustomString.adddelboy),
                checkColor: CustomColors.white,
                activeColor: CustomColors.colorPrimaryBlue,
                onSaved: (bool value) {
                  print(value);
                },
                validator: (bool value) {
                  if (value) {
                    setState(() {
                      isUpiBoxVisible = true;
                    });
                    return null;
                  } else {
                    isUpiBoxVisible = false;
                    return 'False!';
                  }
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16),
              child: Visibility(
                  visible: isKhataBoxVisible,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                          onTap:(){
                            setState(() {
                              _count_delboy++;
                            });
                          },
                          child:Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text('+ Add', style: CustomStyle.orangeMerch_12,textAlign: TextAlign.end,),
                            ],
                          )
                      ),
                      SizedBox(height: 10,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GetCardSetupTile(CustomString.name,''),
                          /*card setup*/
                          Container(
                            height:100,
                            child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: _count_delboy,
                              itemBuilder: (BuildContext context,int index){
                                return GetCardSetup('Rajiv Gupta','+91 0987654321',context);
                              },
                              //children: _chargeCard,
                              //scrollDirection: Axis.vertical,
                            ),
                          )
                        ],
                      ),

                    ],
                  )
              ),),
          ],
        ),
      ),
    );
  }

}

/*radiuswise options UI*/
class AreaOptions extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return AreaOptionsRbtn();
  }

}

int _groupValue = -1;
int selIndex=0;

Widget _myRadioButton({String title, int value, Function onChanged}) {
  return RadioListTile(
    value: value,
    groupValue: _groupValue,
    onChanged: onChanged,
    title: Text(title),
  );
}

class AreaOptionsRbtn extends State{
  @override
  Widget build(BuildContext context) {
    int _stackIndex = 0;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              flex: 1,
              fit: FlexFit.loose,
              child: _myRadioButton(
                title: CustomString.radwise,
                value: 0,
                onChanged: (newValue){
                  setState(() {
                    _groupValue = newValue;
                    selIndex = 0;
                    print(selIndex);
                    isRadiuswiseVisible = true;
                    isAreawiseVisible = false;
                  });
                },
              ),),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: _myRadioButton(
                title: CustomString.areawise,
                value: 1,
                onChanged: (newValue){
                  setState(() {
                    _groupValue = newValue;
                    selIndex = 1;
                    print(selIndex);
                    isRadiuswiseVisible = false;
                    isAreawiseVisible = true;
                  });
                },
              ),),
          ],
        ),
        Visibility(
          visible: isRadiuswiseVisible,
            child: Container(
              margin: EdgeInsets.only(left: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                      onTap:(){
                        setState(() {
                          _count_radius++;
                        });
                      },
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('+ Add', style: CustomStyle.orangeMerch_12,textAlign: TextAlign.end,),
                        ],
                      )
                  ),
                  SizedBox(height: 10,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GetCardSetupTile(CustomString.radius,CustomString.charge),
                      /*card setup*/
                      Container(
                        height: 100,
                        //width: MediaQuery.of(context).size.width,
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: _count_radius,
                          itemBuilder: (BuildContext context,int index){
                            return GetCardSetup('01 KM','₹ 10',context);
                          },
                          //children: _chargeCard,
                          //scrollDirection: Axis.vertical,
                        ),
                      )
                    ],
                  ),

                ],
              ),
            )
        ),
        Visibility(
          visible: isAreawiseVisible,
          child:Padding(
            padding: EdgeInsets.only(left: 16),
            child:  Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                    onTap:(){
                      setState(() {
                        _count_area++;
                      });
                    },
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('More Options', style: CustomStyle.orangeMerch_12,textAlign: TextAlign.end,),
                      ],
                    )
                ),
                Container(
                  height: 100,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: _count_area,
                    itemBuilder: (BuildContext context,int index){
                      return InkWell(
                          onTap: (){
                            //select address
                          },
                          child: BtnBlue_singletext_small_outline('Goregaon (E)', context, MediaQuery.of(context).size.width, 36)
                      );
                    },
                    //children: _chargeCard,
                    //scrollDirection: Axis.vertical,
                  ),
                )

              ],
            )
          ),
        ),
      ],
    );
  }

}


