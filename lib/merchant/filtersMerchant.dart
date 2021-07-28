import 'package:anydukaan/customdesigns/customButtons.dart';
import 'package:anydukaan/customdesigns/myCustomAppBar.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:anydukaan/valueresources/dimens.dart';
import 'package:flutter/material.dart';

final List<String> options = <String>["Category","Sub : Category","Brands","Price","Out of Stock",];

String selectedOpt="";
Map<String, bool> values_toDisp = values_options;

Map<String, bool> values_options = {
  'Milk Products': false,
  'Tetra Milk': false,
  'Cream': false,
  'Ghee': false,
  'Cheese': false,
  'Butter': false,
  'Paneer': false,
  'Cream1': false,
  'Ghee1': false,
  'Cheese1': false,
  'Butter1': false,
  'Paneer1': false,
};

Map<String, bool> values_subcats = {
  'Milk': false,
  'Shreekhand': false,
  'Dahi': false,
  'Butter Milk': false,
};

Map<String, bool> values_brands = {
  'Amul': false,
  'Govardhan': false,
  'Dairy': false,
  'Chitale': false,
};

Map<String, bool> values_price = {
  '₹ 500': false,
  '₹ 400': false,
  '₹ 300': false,
  '₹ 200': false,
};

class FiltersMerchant extends State{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.background_lightblue,
      appBar: CustomAppBarWithoutSearch('Filters',true,true,'','assets/close.png',),
      body: SingleChildScrollView(
        child: Container(
          decoration: CustomStyle.getBoxShadow_gradient(),
          //margin: EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /*options list*/
              Flexible(
                flex: 3,
                  fit: FlexFit.tight,
                  child: Container(
                    width: 130,
                    color: CustomColors.blue_darkmerch,
                    height: MediaQuery.of(context).size.height,
                    child: CustomFilterOptionsView(options:options),
                  ),
              ),

              /*list content of selected option*/
              Flexible(
                flex: 7,
                fit: FlexFit.tight,
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  child:CheckboxWidget(),
                ),
              ),

            ],
          ),
        ),
      ),
      bottomSheet: Container(
        color: CustomColors.white,
        height: 70,
        child:Padding(
          padding: EdgeInsets.only(left: 16),
          child:  Row(
            children: [
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child:Text('(20) Products',style: CustomStyle.blackBoldMerch_16,),
              ),
              Flexible(
                  flex: 1,
                  fit: FlexFit.tight,
                  child:InkWell(
                    onTap: (){

                    },
                    child:BtnContinue(CustomString.apply, context, 'callBtnFrom'),
                  )
              ),
            ],
          ),
        )
      ),

    );
  }
}

class CustomFilterOptionsView extends StatefulWidget{
  List<String> options;
  CustomFilterOptionsView({Key key,this.options}):super(key: key);

  @override
  State<StatefulWidget> createState() {

    return FiltersOptions(options: options);
  }
}

class FiltersOptions extends State{
  int i;
  int _selectedIndex;
  List<String> options;
  FiltersOptions({Key key,this.options});

  _onSelected(int index) {
    setState(() {
      _selectedIndex = index;
      selectedOpt = options[index].toString();
      print('op:'+selectedOpt);
      switch(_selectedIndex){
        case 0:
          values_toDisp= values_options;
          break;
        case 1:
          values_toDisp= values_subcats;
          break;
        case 2:
          values_toDisp= values_brands;
          break;
        case 3:
          values_toDisp= values_price;
          break;
      }
      print(values_toDisp);
    });
  }

  @override
  Widget build(BuildContext context) {
    print(i.toString());
    return ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: options.length,
        itemBuilder: (BuildContext context,int index){
          return InkWell(
              onTap: (){
                //open list of selected type
              },
              child:Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 16),
                    width: CustomDimens.cardWidth_130,
                    decoration: _selectedIndex != null && _selectedIndex == index
                          ? CustomStyle.getBoxShadow_gradient()
                          : CustomStyle.getBoxShadow_none(),
                    child: Padding(
                      padding: EdgeInsets.only(left: 12,top: 16,bottom: 12,),
                      child: InkWell(
                        onTap: () {
                          _onSelected(index);
                        },
                        child: Text(options[index].toString(),style: CustomStyle.blackNormalMerch_12,textAlign: TextAlign.start,),
                      )
                    )

                  ),
                ],
              )
          );
        }
    );
  }

}

class CheckboxWidget extends StatefulWidget {
  @override
  CheckboxWidgetState createState() => new CheckboxWidgetState();
}

class CheckboxWidgetState extends State {

  var tmpArray = [];

  getCheckboxItems(){

    values_toDisp.forEach((key, value) {
      if(value == true)
      {
        tmpArray.add(key);
      }
    });

    // Printing all selected items on Terminal screen.
    print(tmpArray);
    // Here you will get all your selected Checkbox items.

    // Clear array after use.
    tmpArray.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Column (children: <Widget>[
      Flexible(
        flex: 1,
        fit: FlexFit.tight,
        child :
        ListView(
          scrollDirection: Axis.vertical,
          children: values_toDisp.keys.map((String key) {
            return Theme(
                data: CustomStyle.getThemeCheckBox_RadioButton,
                child: CheckboxListTile(
                  contentPadding: EdgeInsets.only(top: 0,bottom: 0),
                  controlAffinity: ListTileControlAffinity.leading,
                  title: CustomStyle.CheckboxTitle(key), //restaurants
                  value: values_toDisp[key],   //grocery
                  activeColor: CustomColors.colorPrimaryBlue,
                  checkColor: Colors.white,
                  onChanged: (bool value) {
                    setState(() {
                      values_toDisp[key] = value;
                    });
                  },
                ));
          }).toList(),
        ),
      ),]);
  }
}