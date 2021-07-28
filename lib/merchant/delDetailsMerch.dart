import 'package:anydukaan/customdesigns/customButtons.dart';
import 'package:anydukaan/customdesigns/expanded_categoryList.dart';
import 'package:anydukaan/customdesigns/merchAppBar.dart';
import 'package:anydukaan/customdesigns/myCustomAppBar.dart';
import 'package:anydukaan/customdesigns/myCustomAppBar2.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

String dropdownValue = 'Worker';
List <String> spinnerItems = ['Worker', 'Employee', 'Manager', 'Developer',] ;

String dropdownValue_dept = 'Sales';
List <String> spinnerItems_dept = ['Sales', 'Development', 'Support', 'Accounts',] ;

class DeliveryAgentDetails extends State {

  @override
  Widget build(BuildContext context) {
    return DeliveryAgentDetails_();
  }
}

class DeliveryAgentDetails_ extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: CustomColors.background_lightblue,
      appBar: CustomAppBarWithoutSearch('Details',true,false,'assets/serch.png','assets/module_info.png'),
      body: SingleChildScrollView(
        clipBehavior: Clip.antiAlias,
        scrollDirection: Axis.vertical,
        child:Container(
          margin: EdgeInsets.only(top: 16,bottom: 60,left: 16,right: 16),
          child: Column(
            children: [
              /*name*/
              CustomStyle.getEditTextEnterDetails('Name', 16, 1, TextInputType.text,CustomStyle.blackNormalMerch_16),
              /*mobile*/
              CustomStyle.getEditTextWithIcon('Mobile', 16, 1, TextInputType.number,Icons.perm_contact_cal_outlined,
                  CustomColors.colorPrimaryBlue, 16,'',CustomColors.colorblackmerch),
              /*Advance options*/
              ExpansionTile(
                title: Transform(
                  transform: Matrix4.translationValues(-10, -5, 0.0),
                  child:Text('Advance',style: CustomStyle.blackBoldMerch_16,textAlign: TextAlign.start,),
                ),
                trailing:  Transform(
                  transform: Matrix4.translationValues(0.0, -10, 0.0),
                  child:CustomStyle.getIcons(Icons.keyboard_arrow_down, 20, CustomColors.colorPrimaryOrange),
                ),
                children: <Widget>[
                  GetAdvanceOptions_(),
                ],
              ),
              /*Visibility(
                  visible: true,
                  child: GetAdvanceOptions()),*/
            ],
          ),
        )
      ),
      bottomSheet: InkWell(
        onTap: (){
          /*call API to add delivery agent to server*/
        },
        child: BtnContinue(CustomString.saveChanges, context, 'AddAgent'),
      ),
    );
  }
}

class GetAdvanceOptions_ extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return GetAdvanceOptions();
  }

}

class GetAdvanceOptions extends State{
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /*email*/
        CustomStyle.getEditTextWithIcon('Email', 16, 1, TextInputType.text,Icons.email_outlined,
            CustomColors.colorPrimaryBlue, 16,'',CustomColors.colorblackmerch),
        /*alternate mobile*/
        CustomStyle.getEditTextWithIcon('Alternate Mobile', 16, 1, TextInputType.number,Icons.perm_contact_cal_outlined,
            CustomColors.colorPrimaryBlue, 16,'',CustomColors.colorblackmerch),
        /*designation*/
        DropdownButton<String>(
          value: dropdownValue,
          icon: Icon(Icons.keyboard_arrow_down),
          iconSize: 24,
          elevation: 16,
          isExpanded: true,
          hint: Text('Designation',style: CustomStyle.blackNormalMerch_12,),
          style: CustomStyle.blackNormalMerch_16,
          underline: Container(
            height: 1,
            color: CustomColors.greydark,
          ),
          onChanged: (String data) {
            setState(() {
              dropdownValue = data;
            });
          },
          items: spinnerItems.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
        /*department*/
        DropdownButton<String>(
          value: dropdownValue_dept,
          icon: Icon(Icons.keyboard_arrow_down),
          iconSize: 24,
          elevation: 16,
          isExpanded: true,
          hint: Text('Department',style: CustomStyle.blackNormalMerch_12,),
          style: CustomStyle.blackNormalMerch_16,
          underline: Container(
            height: 1,
            color: CustomColors.greydark,
          ),
          onChanged: (String data) {
            setState(() {
              dropdownValue_dept = data;
            });
          },
          items: spinnerItems_dept.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
        /*adhar number*/
        CustomStyle.getEditTextEnterDetails('Adhar Number', 16, 1, TextInputType.text,CustomStyle.blackNormalMerch_16),
        /*pan number*/
        CustomStyle.getEditTextEnterDetails('Pan Number', 16, 1, TextInputType.text,CustomStyle.blackNormalMerch_16),
        /*address*/
        CustomStyle.getEditTextEnterDetails('Address', 16, 5, TextInputType.text,CustomStyle.blackNormalMerch_16),
        /*date of joining*/
        CustomStyle.getEditTextWithIcon('Date of Joining', 16, 1, TextInputType.text,Icons.calendar_today,
            CustomColors.colorPrimaryBlue, 16,'',CustomColors.colorblackmerch),
        /*date of birth*/
        CustomStyle.getEditTextWithIcon('Date of Birth', 16, 1, TextInputType.text,Icons.calendar_today,
            CustomColors.colorPrimaryBlue, 16,'',CustomColors.colorblackmerch),
      ],
    );
  }


}


