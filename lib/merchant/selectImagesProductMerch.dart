import 'package:anydukaan/customdesigns/customButtons.dart';
import 'package:anydukaan/customdesigns/myCustomAppBar.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:anydukaan/valueresources/dimens.dart';
import 'package:flutter/material.dart';

final List<String> entries = <String>["Restaurant","Grocery","Vegetables","Fruits","Meat",
  "Sweets","Dry Fruits","Stationary"];

class SelectProductImagesMerchant extends State{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.background_lightblue,
      appBar: CustomAppBarWithoutSearch('Edit Product',true,true,'assets/upload.png','assets/delete.png',),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /*gridview of images*/
              Container(
                height: MediaQuery.of(context).size.height,
                //gridview of segment list
                child: CustomGridView(),

              ),
            ],
          ),
        ),
      ),
      bottomSheet: InkWell(
        onTap: (){
          //send/update images to server
        },
        child: BtnContinue(CustomString.saveChanges, context, 'ImagesList'),
      ),

    );
  }
}

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
            crossAxisCount: 4
        ),
        itemCount: 15,
        itemBuilder: (BuildContext context,int index){

          //gridview
          return InkWell( //to get effect on click
              onTap:(){
                print("Image Selected");
              },
              child:Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    width: CustomDimens.cardWidth_70,
                    height: 68,
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(6),
                        child: ClipRRect(
                            child: Image.asset("assets/dummy_prod.png",width: 71,height: 68,fit: BoxFit.cover,)
                          //child: CustomStyle.getImageIcons("assets/rest.png",24,Colors.transparent)
                        ),
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