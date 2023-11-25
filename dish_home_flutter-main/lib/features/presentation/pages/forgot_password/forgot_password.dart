import 'package:dish_home/app/home_navigation/widget/custom_app_bar.dart';
import 'package:dish_home/config/route/route_helper.dart';
import 'package:dish_home/features/presentation/widget/chat_bot_icon.dart';
import 'package:dish_home/features/presentation/widget/custom_button.dart';
import 'package:dish_home/features/presentation/widget/small_text.dart';
import 'package:dish_home/utils/app_colors.dart';
import 'package:dish_home/utils/app_dimension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widget/app_logo.dart';
import '../../widget/custom_text_field.dart';
import '../../widget/header_text.dart';
import '../../widget/register_button.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final forgetPassword = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    forgetPassword.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: appBar("Forgot password"),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: Dimension.height30),
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
              SizedBox(height: Dimension.height20),
              HeaderText(text: "Forgot Password"),
              SizedBox(height: Dimension.height5),
              SmallTxt(
                text: "Enter your registered phone number to get code",
                color: AppColors.grey,
              ),
              SizedBox(
                height: Dimension.height45,
              ),
              AppTextField(
                hintText: 'Phone Number',
                icon: Icons.phone,
                textController: forgetPassword,
                isObscure: false,
              ),
              SizedBox(height: Dimension.height20),
              CustomButton(
                color: AppColors.redColor,
                text: "Send verification code ",
                onTap: () {
                  Get.toNamed(RouteHelper.getOtpVerificationPage());
                },
              ),
              SizedBox(height: Dimension.height40 * 8),
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
