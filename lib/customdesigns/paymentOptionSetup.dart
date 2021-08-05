import 'package:anydukaan/customdesigns/cardSetupMerch.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:checkbox_formfield/checkbox_list_tile_formfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:progress_timeline/progress_timeline.dart';

bool isUpiBoxVisible=true;
bool isKhataBoxVisible=true;

class PaymentOpt extends StatefulWidget{
  ProgressTimeline progressTimeline;

  @override
  State<StatefulWidget> createState() {
    return PaymentOptionSetup();
  }

}

class PaymentOptionSetup extends State{

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.zero,
      physics: ScrollPhysics(),
      child:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Transform(
            transform: Matrix4.translationValues(10, 0, 0.0),
            child:Padding(
              padding: EdgeInsets.only(top: 18),
              child: Text(CustomString.quePayOpt,style: CustomStyle.blackBoldMerch_12,textAlign: TextAlign.start,),
            )
          ),
          SizedBox(height: 16,),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /*cod*/
              Transform(
                transform: Matrix4.translationValues(-12, 0, 0.0),
                child:Theme(
                  data:  CustomStyle.getThemeCheckBox_RadioButton,
                  child: CheckboxListTileFormField(
                    title: CustomStyle.CheckboxTitle(CustomString.cod),
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
              ),
              /*upi*/
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Transform(
                    transform: Matrix4.translationValues(-12, 0, 0.0),
                    child: Theme(
                      data:  CustomStyle.getThemeCheckBox_RadioButton,
                      child: CheckboxListTileFormField(
                        title:CustomStyle.CheckboxTitle(CustomString.upi),
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
                  ),
                  Visibility(
                      visible: isUpiBoxVisible,
                      child: Container(
                        height: 40,
                        width: MediaQuery.of(context).size.width,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: 16),
                            child: CustomStyle.getEditTextSearch(CustomString.hintUpi,14,1),
                          ),

                        ),
                      )
                  ),
                ],
              ),
              /*khata*/
              Column(
                children: [
                  Transform(
                      transform: Matrix4.translationValues(-12, 0, 0.0),
                      child: Theme(
                        data:  CustomStyle.getThemeCheckBox_RadioButton,
                        child: CheckboxListTileFormField(
                          title:CustomStyle.CheckboxTitle(CustomString.khata),
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
                  ),
                  Visibility(
                      visible: isKhataBoxVisible,
                      child: Column(
                        children: [
                          GetCardSetupTile(CustomString.minAmt,CustomString.maxAMmt),
                          GetCardSetup('₹ 250','₹ 550',context),
                        ],
                      )
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

}
