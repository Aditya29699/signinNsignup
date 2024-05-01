import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_login/screens/signin_screen.dart';
import 'package:flutter_login/screens/signup_screen.dart';
import 'package:flutter_login/widgets/custom_button.dart';
import 'package:flutter_login/widgets/custom_scaffold.dart';

class welcomeScreen extends StatelessWidget{
  const welcomeScreen({super.key});
@override
  Widget build(BuildContext context){
  return  CustomScaffold(
    child: Column(
      children: [
        Flexible(
          flex: 8,
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 0,
                horizontal: 35.0,
              ),
          child: Center(child: RichText(
            textAlign: TextAlign.center,
            text: const TextSpan(
              children: [
                TextSpan(
                  text: 'Welcome Back !\n',
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.w600,
                  )
                ),
                TextSpan(
                  text: '\n Enter personal details to your employee account',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),),
        )),
        Flexible(
          flex: 0,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Row(
                children: [
                  Expanded(
                    child: WelcomeButton(
                      buttonText:'Signin',
                      onTap: SignInScreen(),
                      color: Colors.transparent,
                      textColor:Colors.white,

                  ),),
                  Expanded(child: WelcomeButton(
                    buttonText: 'Signup',
                    onTap: SignUpScreen(),
                    color: Colors.white,
                    textColor:Colors.blue,

                  ),),
                ],
              ),
            ),),
      ],
    ),

  );
}
}

