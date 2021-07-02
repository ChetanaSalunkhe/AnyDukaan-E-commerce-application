import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*Created by Chetana*/
class SearchBar extends StatelessWidget {
  final Widget child;
  final Gradient gradient;
  final double width;
  final double height;
  final Function onPressed;

  const SearchBar({
    Key key,
    @required this.child,
    this.gradient,
    this.width = double.infinity,
    this.height = 44.0,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 44.0,
      padding: EdgeInsets.only(left: 16,right: 16),
     child: Card(
       shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.vertical(
               bottom: Radius.circular(20),
             top: Radius.circular(20)
           )
       ),
     ),
    );
  }
}