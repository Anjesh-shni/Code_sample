import 'package:dish_home/app/home_navigation/widget/custom_app_bar.dart';
import 'package:dish_home/features/presentation/widget/app_logo.dart';
import 'package:dish_home/features/presentation/widget/custom_button.dart';
import 'package:dish_home/features/presentation/widget/small_text.dart';
import 'package:dish_home/utils/app_colors.dart';
import 'package:dish_home/utils/app_dimension.dart';
import 'package:flutter/material.dart';
import '../../widget/chat_bot_icon.dart';
import '../../widget/header_text.dart';
import '../../widget/password_text_field.dart';


class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  final password = TextEditingController();
  final confirmPassword = TextEditingController();
   bool hidePassword = false;
  bool hideConfirmPAssword = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    password.dispose();
    confirmPassword.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: appBar("Change password"),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: Dimension.height30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: Dimension.height40),
              const Center(
                child: AppLogo(),
              ),
              SizedBox(height: Dimension.height20),
              HeaderText(text: "Change Password"),
              SizedBox(height: Dimension.height5),
              SmallTxt(
                text: "Enter your new password below",
                color: AppColors.grey,
              ),
              SizedBox(
                height: Dimension.height45,
              ),
             PassWordTextField(
                hintText: 'Password',
                icon: Icons.lock,
                textController: password,
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
              SizedBox(
                height: Dimension.height20,
              ),
              PassWordTextField(
                hintText: 'Confirm Password',
                icon: Icons.lock,
                textController: confirmPassword,
                isObscure: hideConfirmPAssword ? true : false,
                pasIcon: hideConfirmPAssword
                    ? Icons.visibility_outlined
                    : Icons.visibility_off_outlined,
                onTap: () {
                  setState(() {
                    hideConfirmPAssword = !hideConfirmPAssword;
                  });
                },
              ),
              SizedBox(height: Dimension.height20),
              CustomButton(
                color: AppColors.redColor,
                text: "Save Changes ",
                onTap: () {
                  // Get.toNamed(RouteHelper.getOtpVerificationPage());
                },
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
