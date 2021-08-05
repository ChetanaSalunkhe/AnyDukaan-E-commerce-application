import 'package:anydukaan/customdesigns/secondRoute.dart';
import 'package:anydukaan/dialogBoxDesigns/choose_ScanPopupMerch.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:bottom_bar_with_sheet/bottom_bar_with_sheet.dart';
import 'package:flutter/material.dart';

String selectedSegment='';
final List<String> entries = <String>["Restaurant","Grocery","Vegetables","Fruits","Meat",
  "Sweets","Dry Fruits","Stationary",];

class TutorialOverlay extends ModalRoute<void> {
  @override
  Duration get transitionDuration => Duration(milliseconds: 500);

  @override
  bool get opaque => false;

  @override
  bool get barrierDismissible => false;

  @override
  Color get barrierColor => Colors.black.withOpacity(0.8);

  @override
  String get barrierLabel => null;

  @override
  bool get maintainState => true;

  @override
  Widget buildPage(
      BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      ) {
    // This makes sure that text and other content follows the material style
    return Material(
      type: MaterialType.transparency,
      // make sure that the overlay content is not cut off
      child: SafeArea(
        child: _buildOverlayContent(context),
       // child: _buildOverlayContent_segment(context),
      ),
    );
  }

  Widget _buildOverlayContent(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Flexible(
            flex: 8,
              fit: FlexFit.tight,
              child:GetPopup(context),),
          Flexible(
            flex: 2,
            fit: FlexFit.tight,
            child:Padding(
              padding: EdgeInsets.only(right: 16,bottom: 15,top: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 50.0,
                    width: 58.0,
                    child: FittedBox(
                      child: FloatingActionButton(
                        backgroundColor: CustomColors.colorPrimaryOrange,
                        child: Icon(Icons.close,color: CustomColors.white,),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ),
                ],
              ),),),
        ],
      ),
    );
  }

  Widget _buildOverlayContent_segment(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: 9,
                  fit: FlexFit.tight,
                  child: Text('Select Segment',style: CustomStyle.whiteBoldMerch_14,textAlign: TextAlign.center,),),
                Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child:InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: CustomStyle.getIcons(Icons.close, 16, CustomColors.white),
                    )),
              ],
            ),
            SizedBox(height: 12,),
            SingleChildScrollView(
              child:CustomGridView(),
            )
          ],
        ),
      )
    );
  }

  @override
  Widget buildTransitions(
      BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
    // You can add your own animations for the overlay content
    return FadeTransition(
      opacity: animation,
      child: ScaleTransition(
        scale: animation,
        child: child,
      ),
    );
  }
}

class CustomGridView extends StatefulWidget{
 /* List<String> entries;
  CustomGridView({Key key,this.entries}):super(key: key);*/

  @override
  State<StatefulWidget> createState() {

    return GridViewUI();
  }
}

class GridViewUI  extends State{
 /* List<String> entries;
  GridViewUI({Key key, this.entries});*/

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.4,
        ),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: entries.length,
        itemBuilder: (BuildContext context,int index){
          return InkWell(
              onTap: (){
                setState(() {
                  selectedSegment=entries[index].toString();
                  Navigator.of(context).pop({'selectedSegment':selectedSegment});
                });
              },
              child:Column(
                children: [
                  Container(
                    width: 117,
                    height: 106,
                    child: Card(
                      margin: EdgeInsets.only(right: 8,left: 8,bottom: 8,top:8),
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child:CustomStyle.getImageBanner('assets/rest.png', 567, 56, BoxFit.scaleDown),
                    ),

                  ),
                  SizedBox(height: 6,),
                  Text(entries[index].toString(),style: CustomStyle.whiteBoldMerch_12,),
                ],
              )
          );

        }
    );
  }

}

