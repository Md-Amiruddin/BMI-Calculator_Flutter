import 'package:flutter/material.dart';
import '../constants.dart';

class LargeButton extends StatelessWidget {
  LargeButton({@required this.title, @required this.onPress});

  final Function onPress;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        alignment: Alignment.center,
        child: Text(title,  style: kLargeButtonTextStyle,),
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        height: kBottomContainerHeight,
        decoration: BoxDecoration(
          color: kBottomContainerColour,
        ),
      ),
    );
  }
}