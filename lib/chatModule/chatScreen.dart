import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<String> msgList_sender = <String>[
  'Hello! I need your help','I am not able to place order of DaKos pencil toolkit.',];

List<String> msgList_receiver = <String>[
  'Hello Developer! What can I help you?','Sorry, currently we don’t have it.',];

class ChatPage extends State{
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            /*cross button*/
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                    flex: 4,
                    fit: FlexFit.loose,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 16),
                          child: IconButton(
                            alignment: Alignment.centerRight,
                            icon: CustomStyle.getImageIcons('assets/close.png',10,CustomColors.black),
                            iconSize: 50,
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),)
                      ],
                    )),
              ],
            ),

            /*chat message section*/
            Expanded(
                child: GetChatList(context),
            ),

            SizedBox(height: 16,),
            /*edit box*/
            Padding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                        flex: 1,
                        fit: FlexFit.tight,
                        child:Padding(
                          padding: EdgeInsets.only(left: 14,bottom: 16),
                          child: CustomStyle.getImageIcons('assets/chat_bubble_2.png', 20, CustomColors.colorPrimaryBlue),
                        )),
                    SizedBox(width: 16,),
                    Flexible(
                        flex: 8,
                        fit: FlexFit.tight,
                        child:Padding(
                          padding: EdgeInsets.only(bottom: 8),
                          child: CustomStyle.getEditText('Type your text here...', 14,null),
                        )),
                    SizedBox(width: 4,),
                    Flexible(
                        flex: 1,
                        fit: FlexFit.tight,
                        child:Padding(
                          padding: EdgeInsets.only(right: 16,bottom: 16),
                          child:CustomStyle.getIcons(Icons.send, 20, CustomColors.colorPrimaryOrange),
                        )),
                  ],
                ),
              ),),
          ],
        ),
      ),
    );
  }
}

ListView GetChatList(BuildContext context){
  return ListView.builder(
      itemCount: msgList_receiver.length,
      itemBuilder: (BuildContext context, int index){
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                  child:CustomStyle.ReceiverBubble(msgList_sender[index].toString(),context),
                )
              ],
            ),
            SizedBox(height: 8,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomStyle.SenderBubble(msgList_receiver[index].toString()),
              ],
            ),
            SizedBox(height: 8,),
          ],
        );
      });
}