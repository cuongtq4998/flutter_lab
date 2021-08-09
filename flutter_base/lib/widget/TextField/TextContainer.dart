import 'package:flutter/widgets.dart';
import 'package:flutter_base/src/until/Containt.dart';

class TextContainer extends StatelessWidget {
  final Widget widget; 

  const TextContainer({
    Key key,
    this.widget
  }) : super(key: key);

  @override
  Widget build(BuildContext context) { 
    //get size view
    Size size = MediaQuery.of(context).size; 
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 2),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: kPrimaryLightColor,
        borderRadius: BorderRadius.circular(29)
      ),
      child: widget,
    );
  }

}