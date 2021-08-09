import 'package:flutter/material.dart';
import 'package:flutter_base/src/until/Containt.dart';

class RoundButtonWidget extends StatelessWidget {
  final String titleButton;
  final Function press;
  final Color color, textColors;


const RoundButtonWidget({
  Key key,
  this.titleButton,
  this.press,
  this.color = kPrimaryColor,
  this.textColors = Colors.white
}): super(key: key);

  @override
  Widget build(BuildContext context) { 
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: FlatButton(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          color: color,
          onPressed: press,
          child: Text(
            titleButton,
            style: TextStyle(color: textColors),
          ),
        ),
      ),
    );
  } 
}