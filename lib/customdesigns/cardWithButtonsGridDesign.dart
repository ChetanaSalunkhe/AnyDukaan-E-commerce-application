import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/material.dart';

class GridViewUI_cardWithbtns  extends State{
  List<String> entries;
  GridViewUI_cardWithbtns({Key key, this.entries});

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height) / 2.35;
    final double itemWidth = size.width / 2;

    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: (itemWidth / itemHeight)
        ),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: entries.length,
        itemBuilder: (BuildContext context,int index){
          return InkWell(
              onTap: (){
              },
              child:Expanded(
                child: Wrap(
                  children: [
                    Container(
                      child: Card(
                          margin: EdgeInsets.only(right: 16,left: 0,bottom: 8,top:8),
                          clipBehavior: Clip.antiAlias,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),

                          child: Container(
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
                                      new Text('1 Ltr', textAlign: TextAlign.center, style: CustomStyle.subTitle,),
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
                                      Container(
                                          alignment: Alignment.center,
                                          child: Card(
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(18), // if you need this
                                                side: CustomStyle.orangeOutline
                                            ),
                                            child: Container(
                                              color: Colors.white,
                                              width: 104,
                                              height: 34,
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  new Text('+', textAlign: TextAlign.center, style: CustomStyle.primaryBtnTextOrange,),
                                                  SizedBox(width: 24,),
                                                  new Text('1', textAlign: TextAlign.center, style: CustomStyle.primaryBtnTextOrange,),
                                                  SizedBox(width: 24,),
                                                  new Text('-', textAlign: TextAlign.center, style: CustomStyle.primaryBtnTextOrange,),
                                                ],
                                              ),
                                            ),
                                          )
                                      ),

                                      SizedBox(height: 10,),

                                    ],
                                  ),
                                ),

                              ],
                            ),
                          )
                      ),

                    ),
                  ],
                ),
              )
          );
        }
    );
  }

}