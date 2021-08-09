import 'package:flutter/material.dart';
import 'package:flutter_base/src/until/Containt.dart';

import 'TextContainer.dart'; 

class RoundInputTextField extends StatelessWidget {
  final String hintText;
  final IconData icons;
  final ValueChanged<String> onChanged;

  const RoundInputTextField({
    Key key,
    this.hintText,
    this.icons = Icons.person,
    this.onChanged  
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextContainer(
      widget: TextField(
        onChanged: onChanged,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          icon: Icon(
            icons,
            color: kPrimaryColor,
          ),
          hintText: hintText,
          border: InputBorder.none
        ),
      ),
    );
  }

}