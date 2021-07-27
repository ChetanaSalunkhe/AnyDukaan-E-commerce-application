import 'package:anydukaan/dialogBoxDesigns/choose_ScanPopupMerch.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:bottom_bar_with_sheet/bottom_bar_with_sheet.dart';
import 'package:flutter/material.dart';

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

class TestPage extends State {
  void _showOverlay(BuildContext context) {
    Navigator.of(context).push(TutorialOverlay());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Test')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: RaisedButton(
            onPressed: () => _showOverlay(context),
            child: Text('Show Overlay'),
          ),
        ),
      ),
    );
  }
}