import 'package:dish_home/app/home_navigation/widget/custom_app_bar.dart';
import 'package:dish_home/features/presentation/widget/app_logo.dart';
import 'package:dish_home/features/presentation/widget/chat_bot_icon.dart';
import 'package:dish_home/features/presentation/widget/custom_text_field.dart';
import 'package:dish_home/features/presentation/widget/small_text.dart';
import 'package:dish_home/utils/app_colors.dart';
import 'package:dish_home/utils/app_dimension.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../config/route/route_helper.dart';
import '../../widget/custom_button.dart';
import '../../widget/header_text.dart';


class OtpVerification extends StatelessWidget {
  const OtpVerification({super.key});

  @override
  Widget build(BuildContext context) {
    final otpVerify = TextEditingController();
    return Scaffold(
       appBar: appBar("Verify OTP"),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: Dimension.height30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: Dimension.height40,
              ),
              const Center(
                child: AppLogo(),
              ),
              SizedBox(height: Dimension.height20),
              HeaderText(text: "Verify OTP"),
              SizedBox(height: Dimension.height5),
              SmallTxt(
                text:
                    "Please enter verification code sent to\n            +977-9812*****3478",
                color: AppColors.grey,
              ),
              SizedBox(
                height: Dimension.height45,
              ),
              AppTextField(
                hintText: 'OTP Code',
                icon: Icons.email,
                textController: otpVerify,
                isObscure: false,
              ),
              SizedBox(height: Dimension.height20),
              CustomButton(
                color: AppColors.redColor,
                text: "Verify code",
                onTap: () {
                  Get.toNamed(RouteHelper.getChangePassword());
                },
              ),
              SizedBox(height: Dimension.height40 + 30),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    text: "Don't receive verification code ?\n",
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: Dimension.font16,
                    ),
                    children: [
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap =
                              () => Get.toNamed(RouteHelper.getLoginWithID()),
                        text: "Resend Code",
                        style:  TextStyle(
                          color: Colors.blue,
                          fontSize: Dimension.font16,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                      )
                    ]),
              ),
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
