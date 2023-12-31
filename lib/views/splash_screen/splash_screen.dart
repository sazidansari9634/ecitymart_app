 import 'package:ecitymart_app/const/consts.dart';
import 'package:ecitymart_app/views/auth_screen.dart/login_screen.dart';
import 'package:ecitymart_app/widgets/app_logo_widget.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class SplashScreen extends StatefulWidget {

   const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  //creating a method to change screen
  changeScreen(){
    Future.delayed(const Duration(seconds: 3), (){
      //using getx
      Get.to(()=>const LoginScreen());
    });
  }

   @override
  void initState() {
    changeScreen();
    super.initState();
  }

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