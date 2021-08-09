import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_base/src/until/Containt.dart';

import 'TextContainer.dart'; 

class RoundInputPasswordTextField extends StatelessWidget {  
  final ValueChanged<String> onChanged;

  const RoundInputPasswordTextField({
    Key key,
    this.onChanged
  }): super(key: key);

  @override
  Widget build(BuildContext context) { 
    return TextContainer(
      widget: TextField(
        onChanged: onChanged,
        obscureText: true,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: kPrimaryColor,
          ),
          border: InputBorder.none
        ),
      ),
    );
  }

}