import 'package:anydukaan/customdesigns/customButtons.dart';
import 'package:anydukaan/customdesigns/expanded_categoryList.dart';
import 'package:anydukaan/customdesigns/merchAppBar.dart';
import 'package:anydukaan/customdesigns/myCustomAppBar.dart';
import 'package:anydukaan/customdesigns/myCustomAppBar2.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:dropdown_search/dropdown_search.dart';
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
              CustomStyle.getEditTextEnterDetails('Name', 14, 1, TextInputType.text,CustomStyle.blackNormalMerch_16),
              /*mobile*/
              CustomStyle.getEditTextMobile('Mobile', 14, 10, TextInputType.number,CustomStyle.blackNormalMerch_16),
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
        CustomStyle.getEditTextWithIcon('Email', 14, 1, TextInputType.text,Icons.email_outlined,
            CustomColors.colorPrimaryBlue, 16,'',CustomColors.colorblackmerch,true),
        /*alternate mobile*/
        CustomStyle.getEditTextMobile('Alternate Mobile', 14, 10, TextInputType.number,CustomStyle.blackNormalMerch_16),
        SizedBox(height: 16,),
        /*designation*/
        DropdownSearch<String>(
            mode: Mode.MENU,
            showSelectedItem: true,
            items: spinnerItems,
            showSearchBox: false,
            showAsSuffixIcons: true,
            popupBackgroundColor: CustomColors.greyline,
            label: "Designation",
            hint: "Choose Designation",
            onChanged: (String data) {
              setState(() {
                dropdownValue = data;
              });
            },
            //selectedItem: dropdownValue,
        ),
        SizedBox(height: 16,),
        /*department*/
        DropdownSearch<String>(
          mode: Mode.MENU,
          showSelectedItem: true,
          items: spinnerItems_dept,
          showSearchBox: false,
          showAsSuffixIcons: true,
          popupBackgroundColor: CustomColors.greyline,
          label: "Department",
          hint: "Choose Department",
          onChanged: (String data) {
            setState(() {
              dropdownValue = data;
            });
          },
          //selectedItem: dropdownValue,
        ),
        /*adhar number*/
        CustomStyle.getEditTextEnterDetails('Adhar Number', 14, 1, TextInputType.text,CustomStyle.blackNormalMerch_16),
        /*pan number*/
        CustomStyle.getEditTextEnterDetails('Pan Number', 14, 1, TextInputType.text,CustomStyle.blackNormalMerch_16),
        /*address*/
        CustomStyle.getEditTextEnterDetails('Address', 14, 5, TextInputType.text,CustomStyle.blackNormalMerch_16),
        /*date of joining*/
        CustomStyle.getEditTextWithIcon('Date of Joining', 14, 1, TextInputType.text,Icons.calendar_today,
            CustomColors.colorPrimaryBlue, 16,'',CustomColors.colorblackmerch,true),
        /*date of birth*/
        CustomStyle.getEditTextWithIcon('Date of Birth', 14, 1, TextInputType.text,Icons.calendar_today,
            CustomColors.colorPrimaryBlue, 16,'',CustomColors.colorblackmerch,true),
      ],
    );
  }


}


