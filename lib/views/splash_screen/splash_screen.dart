 import 'package:ecitymart_app/const/consts.dart';
import 'package:ecitymart_app/widgets/app_logo_widget.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
   const SplashScreen({super.key});
 
   @override
   Widget build(BuildContext context) {
     return Scaffold(
          backgroundColor: redColor,
          body: Center(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Image.asset(icSplashBg, width: 300,)),
                  20.heightBox,
                  applogoWidget(),
                  10.heightBox,
                  appname.text.fontFamily(bold).size(22).white.make(),
                  5.heightBox,
                  appversion.text.white.make(),
                  const Spacer(),
                  credits.text.white.fontFamily(semibold).make(),
                  30.heightBox
                  //our splash scren UI is completed...
              ],
            ),
          ),
     );
   }
 }