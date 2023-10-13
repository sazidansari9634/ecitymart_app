import 'package:ecitymart_app/const/consts.dart';
import 'package:ecitymart_app/widgets/app_logo_widget.dart';
import 'package:ecitymart_app/widgets/bg_widget.dart';
import 'package:ecitymart_app/widgets/custom_textfield.dart';
import 'package:ecitymart_app/widgets/our_button.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool? isCheck = false;
  @override
  Widget build(BuildContext context) {
    return bgWidget(
       child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Column(
            children: [
              (context.screenHeight * 0.1).heightBox,
              applogoWidget(),
              10.heightBox,
              "Join the $appname".text.fontFamily(bold).white.size(18).make(),
              15.heightBox,
              Column(
                children: [
                 customTextField(
                  hint: nameHint,
                  title: name,
                 ), 
                 customTextField(
                  hint: emailHint,
                  title: email,
                 ),
                 customTextField(
                  hint: passwordHint,
                  title: password
                 ),
                 customTextField(
                  hint: passwordHint,
                  title: retypePassword,
                 ),
                 5.heightBox,
                 Row(
                  children: [
                    Checkbox(
                      activeColor: redColor,
                      checkColor: whiteColor,
                      value: isCheck,
                       onChanged: (newValue){
                        setState(() {
                            isCheck = newValue;
                        });
                       }),
                    10.widthBox,
                    Expanded(
                      child: RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: "I agree to the ",
                              style: TextStyle(
                                fontFamily: regular,
                                color: fontGrey,
                              )
                            ),
                            TextSpan(
                              text: termAndCond,
                              style: TextStyle(
                                fontFamily: regular,
                                color: redColor,
                              ),
                            ),
                            TextSpan(
                              text: " & ",
                              style: TextStyle(
                                fontFamily: regular,
                                color: fontGrey,
                              ),
                            ),
                            TextSpan(
                              text: privacyPolicy,
                              style: TextStyle(
                                fontFamily: regular,
                                color: redColor,
                              ),
                            ),
                          ]
                        )
                        ),
                    )   
                  ],
                 ),
                
                 5.heightBox,
                 ourButton(color: isCheck == true ? redColor : lightGrey, title: signup, textColor: whiteColor, onPress: (){}).box.width(context.screenWidth - 50).make(),
                 10.heightBox,
                //wrapping into getsture dectore of velocity x
                 RichText(text: const TextSpan(
                  children: [
                    TextSpan(
                      text: alreadyHaveAccount,
                      style: TextStyle(
                        fontFamily: bold,
                        color: fontGrey
                      )
                    ),
                     TextSpan(
                      text: login,
                      style: TextStyle(
                        fontFamily: bold,
                        color: redColor
                      )
                    )
                  ]
                 )).onTap(() {
                  Get.back();
                 })
                                 ],
              ).box.white.rounded.padding(const EdgeInsets.all(16)).width(context.screenWidth - 70).shadowSm.make()
            ],
          ),
        ),
      )
    );
  }
}