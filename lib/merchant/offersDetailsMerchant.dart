import 'package:anydukaan/customdesigns/bottomSheetDialogDesign.dart';
import 'package:anydukaan/customdesigns/customButtons.dart';
import 'package:anydukaan/customdesigns/customSearchBar.dart';
import 'package:anydukaan/customdesigns/merchAppBar.dart';
import 'package:anydukaan/customdesigns/secondRoute.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

String dropdownValue = 'Bakery';
List <String> spinnerItems = [
  'Bakery',
  'Flours and Grains',
  'Rice',
  'Dal and Pulses',
  'Cold Drinks'
] ;

class ApplyOffersDetailsMerchant extends State{
  String title="";
  ApplyOffersDetailsMerchant({Key key,this.title});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: CustomColors.background_lightblue,
      appBar: CustomAppBarWithoutSearch_Merchant('$title',true,true,'assets/help.png','assets/module_info.png','assets/hamburger_menu.png'),
      body:SingleChildScrollView(
        child: Container(
            margin: EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 16,),
                DropdownSearch<String>(
                  mode: Mode.MENU,
                  showSelectedItem: true,
                  items: spinnerItems,
                  showSearchBox: false,
                  showAsSuffixIcons: true,
                  popupBackgroundColor: CustomColors.greyline,
                  label: "Category",
                  hint: "Select Category",
                  onChanged: (String data) {
                    setState(() {
                      dropdownValue = data;
                    });
                  },
                  //selectedItem: dropdownValue,
                ),
                /*select sub category*/
                SizedBox(height: 16,),
                DropdownSearch<String>(
                  mode: Mode.MENU,
                  showSelectedItem: true,
                  items: spinnerItems,
                  showSearchBox: false,
                  showAsSuffixIcons: true,
                  popupBackgroundColor: CustomColors.greyline,
                  label: "Sub - Category",
                  hint: "Select Sub- Vategory",
                  onChanged: (String data) {
                    setState(() {
                      dropdownValue = data;
                    });
                  },
                  //selectedItem: dropdownValue,
                ),
                SizedBox(height: 16,),
                CustomStyle.getEditTextWithIcon('Search and Select Products', 16, 1, TextInputType.text,
                    Icons.search, CustomColors.colorPrimaryBlue, 16, '',CustomColors.colorPrimaryBlue),
                //SizedBox(height: 12,),

                title=='By Quantity'?CustomStyle.getEditTextEnterDetails('Quantity type', 16, 2,
                    TextInputType.text,CustomStyle.blackNormalMerch_16):
                title == 'By Percentage'?CustomStyle.getEditTextEnterDetails('Percentage type', 16, 2,
                    TextInputType.text,CustomStyle.blackNormalMerch_16): CustomStyle.getEditTextEnterDetails('Reduced Amount', 16, 2,
                    TextInputType.text,CustomStyle.blackNormalMerch_16),

                CustomStyle.getEditTextEnterDetails('Discount period', 16, 2, TextInputType.text,CustomStyle.blackNormalMerch_16),
                SizedBox(height: 30,),
                /*button*/
                InkWell(
                  onTap: (){
                    //btn click logic here
                    /*call api to submit apply offer then on success open popup*/
                    showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        isDismissible: true,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(14),
                              topLeft: Radius.circular(14)),),
                        builder: (context) => ModalBottomSheetDialog(popupStyle:'ApplyOfferPopup'));
                  },
                  child: BtnContinue(CustomString.appOffers, context, 'ApplyOffrBtn'),
                ),
                SizedBox(height: 20,),
                TextButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    child: Text(CustomString.cancel,style: CustomStyle.blackBoldMerch_16,textAlign: TextAlign.center,))
              ],
            )
        ),
      ),
    );
  }
}

Container GetCardDesign(BuildContext context,String imgName, String title){
  return Container(

  );

}