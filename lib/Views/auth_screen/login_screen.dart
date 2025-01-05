import 'package:emart_app/Views/auth_screen/signup_screen.dart';
import 'package:emart_app/Views/home_screen/home.dart';
import 'package:emart_app/Widget_common/applogo_widget.dart';
import 'package:emart_app/Widget_common/bg_widget.dart';
import 'package:emart_app/Widget_common/custom_textfield.dart';
import 'package:emart_app/Widget_common/our_button.dart';
import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/consts/list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
            body: Center(
      child: Column(
        children: [
          (context.screenHeight * 0.1).heightBox,
          applogoWidget(),
          10.heightBox,
          "Log in to $appname".text.fontFamily(bold).white.size(18).make(),
          10.heightBox,
          Column(
            children: [
              customTextField(hint: emailHint, title: email),
              customTextField(hint: passwordHint, title: password),
              Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {}, child: forgetpassword.text.make())),
              5.heightBox,
              //ourButton(),box.width(context.screenWidth - 50).make(),
              ourButton(
                  color: redColor,
                  title: "log in",
                  textColor: whiteColor,
                  onPress: () {
                    Get.to(() => const Home());
                  }).box.width(context.screenWidth - 50).make(),
              5.heightBox,
              createNewAccount.text.color(fontGrey).make(),
              5.heightBox,
              ourButton(
                  color: lightGolden,
                  title: signup,
                  textColor: redColor,
                  onPress: () {
                    Get.to(() => const SignupScreen());
                  }).box.width(context.screenWidth - 50).make(),
            ],
          )
              .box
              .white
              .rounded
              .padding(const EdgeInsets.all(16))
              .width(context.screenWidth - 70)
              .make(),
          10.heightBox,
          loginwith.text.color(fontGrey).make(),
          5.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
                3,
                (index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor: lightGrey,
                      radius: 25,
                      child: Image.asset(
                        socialIconList[index],
                        width: 30,
                      ),
                    ))),
          ),
        ],
      ),
    )));
  }
}
