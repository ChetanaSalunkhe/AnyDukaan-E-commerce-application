import 'package:anydukaan/customdesigns/customTimePicker.dart';
import 'package:anydukaan/customdesigns/myCustomAppBar.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/material.dart';
import 'package:slide_digital_clock/slide_digital_clock.dart';

class TestThemes extends State{

  TimeOfDay _time = TimeOfDay(hour: 7, minute: 15);

  void _selectTime() async {
    final TimeOfDay newTime = await showTimePicker(
      context: context,
      initialTime: _time,
    );
    if (newTime != null) {
      setState(() {
        _time = newTime;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarWithoutSearch('test',true,true,'assets/serch.png','assets/module_info.png'),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(16),
          child: Column(
            children: [
              /*InkWell(
                onTap: (){
                  _selectTime;
                },
                child: CustomStyle.getDigitalClock(),
              ),*/
             CustomStyle.getDigitalClock(),

            ],
          ),
        ),
      ),
    );
  }

}