import 'package:e_commerce/views/auth_screen/login_screen.dart';

import '../../consts/consts.dart';
import '../../consts/lists.dart';
import '../../widget_common/applogo_widget.dart';
import '../../widget_common/bg_widget.dart';
import '../../widget_common/custom_textfield.dart';
import '../../widget_common/our_button.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => SignUpScreenState();
}

class SignUpScreenState extends State<SignUpScreen> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            (context.screenHeight * 0.1).heightBox,
            applogowidget(),
            10.heightBox,
            "Join the $appname".text.fontFamily(bold).white.size(18).make(),
            10.heightBox,
            Column(
              children: [
                customTextField(hint: nameHint, title: name),
                15.heightBox,
                customTextField(hint: emailHint, title: email),
                15.heightBox,
                customTextField(hint: passwordHint, title: password),
                15.heightBox,
                customTextField(hint: passwordHint, title: retypePass),
                Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                        onPressed: () {}, child: forgotpass.text.make())),
                5.heightBox,
                Row(children: [
                  Checkbox(
                    activeColor: redColor,
                      checkColor: Colors.white,
                      value: isChecked,
                      onChanged: (newValue) {
                        setState(() {
                          isChecked=newValue;
                        });

                      }),
                  10.widthBox,
                  Expanded(
                    child: RichText(
                        text: const TextSpan(children: [
                      TextSpan(
                          text: "I agree to the ",
                          style: TextStyle(fontFamily: regular, color: fontGrey)),
                      TextSpan(
                          text: termAndCon,
                          style: TextStyle(fontFamily: regular, color: redColor)),
                      TextSpan(
                          text: " & ",
                          style: TextStyle(
                            fontFamily: regular,
                            color: fontGrey,
                          )),
                      TextSpan(
                          text: privacyPolicy,
                          style: TextStyle(
                            fontFamily: regular,
                            color: redColor,
                          ))
                    ])),
                  )
                ]),
                5.heightBox,
                ourButton(
                        color: isChecked==true? redColor: lightGrey,
                        title: singup,
                        textcolor: whiteColor,
                        onpress: () {})
                    .box
                    .width(context.screenWidth - 50)
                    .make(),
                0.heightBox,
                RichText(
                    text: const TextSpan(children: [
                  TextSpan(
                      text: alreadyHaveAcc,
                      style: TextStyle(fontFamily: bold, color: fontGrey)),
                  TextSpan(
                      text: " $login",
                      style: TextStyle(fontFamily: bold, color: redColor))
                ])).onTap(() {
                  Get.back();
                }),
              ],
            )
                .box
                .white
                .rounded
                .padding(const EdgeInsets.all(16))
                .width(context.screenWidth - 70)
                .shadowSm
                .make(),
          ],
        ),
      ),
    ));
  }
}
