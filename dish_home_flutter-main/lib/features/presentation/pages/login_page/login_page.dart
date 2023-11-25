import 'package:dish_home/app/home_navigation/widget/svg_custom_icon.dart';
import 'package:dish_home/features/presentation/widget/app_logo.dart';
import 'package:dish_home/features/presentation/widget/custom_button.dart';
import 'package:dish_home/features/presentation/widget/register_button.dart';
import 'package:dish_home/features/presentation/widget/small_text.dart';
import 'package:dish_home/utils/app_colors.dart';
import 'package:dish_home/utils/app_dimension.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../config/route/route_helper.dart';
import '../../widget/chat_bot_icon.dart';
import '../../widget/custom_button_icon.dart';
import '../../widget/custom_text_field.dart';
import '../../widget/header_text.dart';
import '../../widget/password_text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isCheck = false;
  bool hidePassword = false;

  final emailContr = TextEditingController();
  final passwordContr = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    emailContr.dispose();
    passwordContr.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: Dimension.height30, horizontal: Dimension.height10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: Dimension.height40,
              ),
              const RegisterButton(),
              SizedBox(
                height: Dimension.height10,
              ),
              const Center(
                child: AppLogo(),
              ),
              SizedBox(height: Dimension.height10),
              HeaderText(text: "Login to DishHome"),
              SizedBox(height: Dimension.height5),
              SmallTxt(
                text: "Enter your credentials to login to your account.",
                color: AppColors.grey,
                size: Dimension.font16,
              ),
              SizedBox(
                height: Dimension.height40,
              ),
              AppTextField(
                hintText: 'Phone Number',
                icon: Icons.phone,
                textController: emailContr,
                isObscure: false,
              ),
              SizedBox(
                height: Dimension.height20,
              ),
              PassWordTextField(
                hintText: 'Password',
                icon: Icons.lock,
                textController: passwordContr,
                isObscure: hidePassword ? true : false,
                pasIcon: hidePassword
                    ? Icons.visibility_outlined
                    : Icons.visibility_off_outlined,
                onTap: () {
                  setState(() {
                    hidePassword = !hidePassword;
                  });
                },
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: Dimension.height20,
                  vertical: Dimension.height10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                            value: isCheck,
                            activeColor: Colors.blue,
                            onChanged: (val) {
                              setState(() {
                                isCheck = val!;
                              });
                            }),
                        SmallTxt(
                          text: "Remember me",
                          size: Dimension.font16,
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(RouteHelper.getForgotPassword());
                      },
                      child: SmallTxt(
                        text: "Forget password?",
                        color: AppColors.redColor,
                        size: Dimension.font16,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: Dimension.height10),
              CustomButton(
                color: AppColors.redColor,
                text: "Login ",
                onTap: () {
                  Get.toNamed(RouteHelper.getHomeNav());
                },
              ),
              SizedBox(height: Dimension.height30 * 1.7),
              ButtonWidget(
                buttonText: 'Tap here for Biometric LogIn',
                icon: Image.asset("assets/icons/fingerprint.png"),
                width: Dimension.buttonWidth,
                height: Dimension.buttonHeight,
              ),
              SizedBox(height: Dimension.height15),
              Container(
                height: Dimension.height60,
                width: Dimension.buttonWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimension.radius10),
                  border: Border.all(color: AppColors.grey),
                  color: AppColors.pureWhite,
                ),
                child: Row(
                  children: [
                    SizedBox(width: Dimension.height100),
                    SmallTxt(
                      text: "Or Continue with",
                      size: Dimension.font16,
                      color: AppColors.textColors,
                    ),
                    SizedBox(width: Dimension.height10),
                    Row(
                      children: [
                        myIcon("assets/menu/f.svg"),
                        const SizedBox(width: 5),
                        myIcon("assets/menu/g.svg"),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: Dimension.height40 * 2),
              RichText(
                text: TextSpan(
                    text: "Sign in using  ",
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: Dimension.font16,
                    ),
                    children: [
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap =
                              () => Get.toNamed(RouteHelper.getLoginWithID()),
                        text: "Customer ID",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: Dimension.font16,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                      )
                    ]),
              ),
              SizedBox(height: Dimension.height5),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.whiteGrey,
        child: const ChatBotLogo(),
        onPressed: () {},
      ),
    );
  }
}
