import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'customdesigns/myCustomAppBar.dart';
import 'customdesigns/myCustomAppBar2.dart';
import 'myMainPage.dart';

class MySplashScreenState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      //appBar: CustomAppBarWithoutSearch("mytext"),//give your appbar title here
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Text(CustomString.search,style: CustomStyle.textTitle),
                Text(CustomString.subTitle,style: CustomStyle.subTitle),
                Text('Button Orange text',style: CustomStyle.primaryBtnTextOrange),
                Text('Warning text',style: CustomStyle.warningText),
                Text('Bold text',style: CustomStyle.boldValueText),
                Text('Blue text',style: CustomStyle.blueTitleText),
              ],
            ),
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}