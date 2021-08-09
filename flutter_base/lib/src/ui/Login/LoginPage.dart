import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_base/src/ui/Login/LoginController.dart';
import 'package:flutter_base/widget/RoundButton/RoundButtonWidget.dart';
import 'package:flutter_base/widget/TextField/RoundInputPasswordTextField.dart';
import 'package:flutter_base/widget/TextField/RoundInputTextField.dart'; 
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LoginPage extends GetView<LoginController>{
  @override
  Widget build(BuildContext context) { 
    Size size = MediaQuery.of(context).size; 
    var title = AppLocalizations.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        height: size.height,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget> [
            Positioned(
              top: 0,
              left: 0, 
              child: Image.asset(
                "assets/images/main_top.png",
                width: size.width * 0.35,
              ) , 
            ),
            Positioned(
              top: 0,
              right: 0,
              child: Image.asset(
                "assets/images/login_bottom.png",
                width: size.width * 0.4,
              ),
            ), 
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget> [
                  Text(
                    "LOGIN",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: size.height * 0.03),
                  SvgPicture.asset(
                    "assets/icons/login.svg",
                    height: size.height * 0.35,
                  ),
                  SizedBox(height: size.height * 0.03),
                  RoundInputTextField(
                    hintText: "Users Name",
                    onChanged: (value) {},
                  ),
                  SizedBox(height: size.height * 0.03),
                  RoundInputPasswordTextField(
                    onChanged: (value){},
                  ),
                  RoundButtonWidget(
                    titleButton: "LOGIN",
                    press: () {},
                  ),
                  SizedBox(height: size.height * 0.03),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

}