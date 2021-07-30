import 'package:anydukaan/customdesigns/secondRoute.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*Created by Chetana*/
class SearchBar extends StatelessWidget {
  Widget child;
  Gradient gradient;
  double width;
  double height;
  Function onPressed;
  String hint="";
  String img="";
  double radius;
  double margin;

  //SearchBar({Key key,this.hint}):super(key: key);

  SearchBar({
    Key key,
    @required this.child,
    this.gradient,
    this.width,
    this.height,
    this.onPressed,
    this.hint,
    this.img,
    this.radius,
    this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.only(left: margin,right: margin),
     child: Card(
       shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.vertical(
               bottom: Radius.circular(radius),
             top: Radius.circular(radius)
           )
       ),
       child: Padding(
         padding: EdgeInsets.only(left: 16,right: 16),
         child: Row(
           crossAxisAlignment: CrossAxisAlignment.center,
           children: [
             Flexible(
                 flex: 1,
                 fit: FlexFit.loose,
                 child:  CustomStyle.getImageIcons('assets/serch.png', 16, CustomColors.grey_subtitle),),
             SizedBox(width: 8,),
             Flexible(
                 flex: 10,
                 fit: FlexFit.tight,
                 child: Center(
                   child: CustomStyle.getEditTextSearch('$hint',14,1),
                 )
             ),
             Flexible(
               flex: 0,
                 fit: FlexFit.tight,
                 child: InkWell(
                   onTap: (){
                     Navigator.push(context, 
                     MaterialPageRoute(builder: (context)=>SecondRoute(callFrom: 'SearchBar',)));
                   },
                   //child: CustomStyle.getImageIcons('assets/audio_search.png', 16, CustomColors.colorPrimaryOrange),
                   child: CustomStyle.getImageIcons('$img', 16, CustomColors.colorPrimaryOrange),
                 ))
           ],
         ),
       )
     ),
    );
  }
}