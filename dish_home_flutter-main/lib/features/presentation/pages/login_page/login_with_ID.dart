import 'package:dish_home/app/home_navigation/widget/custom_app_bar.dart';
import 'package:dish_home/features/presentation/widget/custom_button.dart';
import 'package:dish_home/features/presentation/widget/small_text.dart';
import 'package:dish_home/utils/app_colors.dart';
import 'package:dish_home/utils/app_dimension.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../config/route/route_helper.dart';
import '../../widget/app_logo.dart';
import '../../widget/chat_bot_icon.dart';
import '../../widget/custom_text_field.dart';
import '../../widget/header_text.dart';
import '../../widget/register_button.dart';

class LoginWithID extends StatefulWidget {
  const LoginWithID({super.key});

  @override
  State<LoginWithID> createState() => _LoginWithIDState();
}

class _LoginWithIDState extends State<LoginWithID> {
  bool isCheck = false;

  final customerID = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    customerID.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: appBar("Login by Customer ID"),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: Dimension.height30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: Dimension.height40),
              const RegisterButton(),
              SizedBox(height: Dimension.height40),
              const Center(child: AppLogo()),
              SizedBox(height: Dimension.height20),
              HeaderText(text: "Login to DishHome"),
              SizedBox(height: Dimension.height5),
              SmallTxt(
                text: "Enter your customer ID to login  your account.",
                color: AppColors.grey,
              ),
              SizedBox(
                height: Dimension.height45,
              ),
              AppTextField(
                hintText: 'Customer ID',
                icon: Icons.contact_mail_sharp,
                textController: customerID,
                isObscure: false,
              ),
              SizedBox(height: Dimension.height20),
              const CustomButton(
                color: AppColors.redColor,
                text: "Send verification code ",
              ),
              SizedBox(height: Dimension.height40 * 8),
              RichText(
                text: TextSpan(
                    text: "SignUp in using  ",
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: Dimension.font16,
                    ),
                    children: [
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => Get.toNamed(RouteHelper.getLogin()),
                        text: "Phone",
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
