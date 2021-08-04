import 'package:anydukaan/customdesigns/bottomSheetDialogDesign.dart';
import 'package:anydukaan/customdesigns/secondRoute.dart';
import 'package:anydukaan/customdesigns/templateTextIcon.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class OrdFeedbackTemplate extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColors.background_lightblue,
      margin: EdgeInsets.zero,
      child: Column(
        children: [
          Container(
            height: 77,
            color: CustomColors.background_lightblue,
              child: Card(
                  color: CustomColors.background_lightblue,
                  elevation: 2,
                  margin: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(0))
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 16,top: 21,left: 16,right: 16),
                    child: Text(CustomString.dmsg4, style: CustomStyle.subTitle, softWrap: true,
                      overflow: TextOverflow.fade, maxLines: 2, textAlign: TextAlign.justify,)
                  )
              )
          ),
          InkWell(
            onTap: () async {
              /*open issue with order popup*/
              var result = await showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  isDismissible: true,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(14),
                        topLeft: Radius.circular(14)),),
                  builder: (context) => ModalBottomSheetDialog(popupStyle:'IssueWithOrder'));
              print('a:$result');
               if(result['selectedIssue'].toString()==CustomString.returnProduct){
                 /*open popup of reasons return order*/
                 Navigator.push(context, 
                 MaterialPageRoute(builder: (context)=>SecondRoute(callFrom: 'ReturnProductOrd',)));
               }else if(result['selectedIssue'].toString()==CustomString.replaceProduct){
                 /*open popup of reasons replace product*/
                 showModalBottomSheet(
                     context: context,
                     isScrollControlled: true,
                     isDismissible: true,
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.only(
                           topRight: Radius.circular(14),
                           topLeft: Radius.circular(14)),),
                     builder: (context) => ModalBottomSheetDialog(popupStyle:'ReplaceProductReasons'));
               }else if(result['selectedIssue'].toString()==CustomString.cancelOrd){
                 /*open popup of reasons cancel order*/
                 showModalBottomSheet(
                     context: context,
                     isScrollControlled: true,
                     isDismissible: true,
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.only(
                           topRight: Radius.circular(14),
                           topLeft: Radius.circular(14)),),
                     builder: (context) => ModalBottomSheetDialog(popupStyle:'CancelOrderReasons'));
               }else if(result['selectedIssue'].toString()==CustomString.raiseComplaint){
                 /*open popup of reasons raise complaint*/
                 Navigator.push(context,
                     MaterialPageRoute(builder: (context)=>SecondRoute(callFrom: 'Acc_Complaint',)));
               }
            },
            child: GetTextIconTemplate(CustomString.issue_wid_ord,Icons.warning_amber_rounded,16, CustomColors.red),
          ),
          Divider(height: 1,color: CustomColors.greyline,),
          GetTextIconTemplate(CustomString.change_pay_opt,Icons.monetization_on_outlined,16, CustomColors.colorPrimaryBlue),
          Divider(height: 1,color: CustomColors.greyline,),
          GetTextIconTemplate(CustomString.downld_invoice,Icons.download_rounded,18, CustomColors.colorPrimaryBlue),
          Divider(height: 1,color: CustomColors.greyline,),
          /*write review*/
          InkWell(
            onTap: (){
              /*open write review scree*/
              Navigator.push(context,
              MaterialPageRoute(builder: (context)=>SecondRoute(callFrom: 'WriteReview',)));
            },
            child: Container(
                height: 60,
                color: CustomColors.white,
                child: Card(
                    color: CustomColors.white,
                    elevation: 2,
                    margin: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(0))
                    ),
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 16,top: 21,left: 16,right: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('Write Review',style: CustomStyle.blackBoldlCust_14,textAlign:TextAlign.start,),
                            SizedBox(width: 6,),
                            CustomStyle.GetRatingBar(0,Icons.star_outline,CustomColors.grey_subtitle,20),
                          ],
                        )
                    )
                )
            ),
          ),

        ],
      ),
    );
  }

}