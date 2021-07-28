import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:anydukaan/valueresources/dimens.dart';
import 'package:flutter/material.dart';

//gridview
class CustomGridView extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {

    return GridViewUI();
  }
}

class GridViewUI extends State{
  int i;
  // GridViewUI(i);

  @override
  Widget build(BuildContext context) {
    print(i.toString());
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            childAspectRatio: 0.8,
        ),
        itemCount: 15,
        itemBuilder: (BuildContext context,int index){

          //gridview
          return InkWell( //to get effect on click
              onTap:(){
                print("Image Selected");
              },
              child:Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    width: CustomDimens.cardWidth_70,
                    height: 68,
                      child: Padding(
                        padding: EdgeInsets.all(6),
                        child: ClipRRect(
                            child:Image.asset("assets/milk.png",width: 71,height: 68,fit: BoxFit.cover,),
                        ),
                      ),

                    /*if want image inside card then reopen below code*/
                    /*child: Card(
                        clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(6),
                          child: ClipRRect(
                              child: Image.asset("assets/dummy_prod.png",width: 71,height: 68,fit: BoxFit.cover,)
                          ),
                        )
                    ),*/
                  ),
                  /*give brand/product name here retrieved from list*/
                  Text('Amul Milk',style: CustomStyle.blackBoldMerch_10,
                  softWrap: true,maxLines: 1,textAlign: TextAlign.center,overflow: TextOverflow.ellipsis,),
                ],
              )

          );
        }
    );
  }
}