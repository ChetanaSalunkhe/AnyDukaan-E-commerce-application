import 'package:anydukaan/customdesigns/bottomSheetDialogDesign.dart';
import 'package:anydukaan/customdesigns/secondRoute.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:anydukaan/customdesigns/customButtons.dart';
import 'package:flutter/material.dart';

class ListViewUI_cardWithbtns  extends State{
 List<String> entries;
  ListViewUI_cardWithbtns({Key key, this.entries});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: entries.length,
        itemBuilder: (BuildContext context,int index){
          return InkWell(
              onTap: (){
              },
              child:Column(
                children: [
                  Container(
                    width: 156,
                    child: Card(
                        margin: EdgeInsets.only(right: 16),
                        clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),

                        child: Column(
                          children: [
                            Container(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: EdgeInsets.all(16),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      ClipRRect(
                                          child: Image.asset("assets/prod2.png",width: 70,height: 70,
                                            fit: BoxFit.cover,alignment: Alignment.center,)
                                      ),
                                    ],
                                  ),
                                )
                            ),

                            Container(
                              margin: EdgeInsets.only(left: 12,right: 12),
                              child:Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 8,),
                                  new Text('Govardhan milk',
                                    textAlign: TextAlign.center,
                                    style: CustomStyle.blackBoldlCust_12,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                  ),
                                  SizedBox(height: 6,),
                                  InkWell(
                                    onTap: (){
                                      showModalBottomSheet(
                                          context: context,
                                          isScrollControlled: true,
                                          isDismissible: true,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(14),
                                                topLeft: Radius.circular(14)),),
                                          builder: (context) => ModalBottomSheetDialog(popupStyle:'AvalQty'));
                                    },
                                      child:Text('1 Ltr', textAlign: TextAlign.center, style: CustomStyle.subTitle,),),
                                  SizedBox(height: 6,),
                                  Visibility(
                                    visible: false,
                                    child: new Text('Apna Kirana Store', textAlign: TextAlign.center, style: CustomStyle.subTitleBlack,),),
                                  SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      new Text('₹ 300', textAlign: TextAlign.center, style: CustomStyle.textWithLine,),
                                      SizedBox(width: 14,),
                                      new Text('₹ 120', textAlign: TextAlign.center, style: CustomStyle.boldValueText,),
                                    ],
                                  ),
                                  SizedBox(height: 6,),
                                  BtnPlusMinus(),

                                  SizedBox(height: 10,),

                                ],
                              ),
                            ),

                          ],
                        )
                    ),

                  ),
                ],
              )
          );
        }
    );
  }

}