import 'package:ecitymart_app/const/consts.dart';
import 'package:ecitymart_app/const/lists.dart';
import 'package:ecitymart_app/views/auth_screen.dart/signup_screen.dart';
import 'package:ecitymart_app/views/homescreen/home.dart';
import 'package:ecitymart_app/widgets/app_logo_widget.dart';
import 'package:ecitymart_app/widgets/bg_widget.dart';
import 'package:ecitymart_app/widgets/custom_textfield.dart';
import 'package:ecitymart_app/widgets/our_button.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  bgWidget(
       child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Column(
            children: [
              (context.screenHeight * 0.1).heightBox,
              applogoWidget(),
              10.heightBox,
              "Log in to $appname".text.fontFamily(bold).white.size(18).make(),
              15.heightBox,
              Column(
                children: [
                 customTextField(
                  hint: emailHint,
                  title: email,
                 ),
                 customTextField(
                  hint: passwordHint,
                  title: password
                 ),
                 Align(
                   alignment: Alignment.centerRight,
                   child: TextButton(
                    onPressed: (){},
                     child: forgetPass.text.make()
                     ),
                 ),
                 5.heightBox,
                 ourButton(color: redColor, title: login, textColor: whiteColor, onPress: (){
                  Get.to(()=> const Home());
                 }).box.width(context.screenWidth - 50).make(),
                 5.heightBox,
                 createNewAccout.text.color(fontGrey).make(),
                 5.heightBox,
                 ourButton(color: lightGolden, title: signup, textColor: redColor, onPress: (){
                  Get.to(()=> const SignUpScreen());
                 }).box.width(context.screenWidth - 50).make(),
                 10.heightBox,
                 loginWith.text.color(fontGrey).make(),
                 5.heightBox,
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(3, (index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor: lightGrey,
                      radius: 25,
                      child: Image.asset(socialIconList[index],width: 30,),
                    ),
                  )),
                 )

                ],
              ).box.white.rounded.padding(const EdgeInsets.all(16)).width(context.screenWidth - 70).shadowSm.make()
            ],
          ),
        ),
      )
    );
  }
}