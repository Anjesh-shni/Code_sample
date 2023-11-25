import 'package:dish_home/app/home_navigation/widget/custom_app_bar.dart';
import 'package:dish_home/features/presentation/widget/app_logo.dart';
import 'package:dish_home/features/presentation/widget/custom_button.dart';
import 'package:dish_home/features/presentation/widget/small_text.dart';
import 'package:dish_home/utils/app_colors.dart';
import 'package:dish_home/utils/app_dimension.dart';
import 'package:flutter/material.dart';
import '../../widget/chat_bot_icon.dart';
import '../../widget/custom_text_field.dart';
import '../../widget/password_text_field.dart';

class CreateAccountPage extends StatefulWidget {
  const CreateAccountPage({super.key});

  @override
  State<CreateAccountPage> createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
  bool isCheck = false;
  bool hidePassword = false;
  bool hideConfirmPAssword = false;

  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final emailContr = TextEditingController();
  final phoneNumber = TextEditingController();
  final password = TextEditingController();
  final confirmPassword = TextEditingController();
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    emailContr.dispose();
    firstName.dispose();
    lastName.dispose();
    phoneNumber.dispose();
    password.dispose();
    confirmPassword.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: appBar("Create account"),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: Dimension.height30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: Dimension.height40,
              ),
              const Center(child: AppLogo()),
              SizedBox(height: Dimension.height20),
               const Text(
                "Login to DishHome",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
             fontSize: 30,
                ),
              ),
              SizedBox(height: Dimension.height5),
              SmallTxt(
                text: "Enter your credentials to login to your account.",
                color: AppColors.grey,
                size: 14,
              ),
              SizedBox(
                height: Dimension.height45,
              ),
              AppTextField(
                hintText: 'First Name',
                icon: Icons.person,
                textController: firstName,
                isObscure: false,
              ),
              SizedBox(
                height: Dimension.height20,
              ),
              AppTextField(
                hintText: 'Last Name',
                icon: Icons.person,
                textController: lastName,
                isObscure: false,
              ),
              SizedBox(
                height: Dimension.height20,
              ),
              AppTextField(
                hintText: 'Email',
                icon: Icons.email,
                textController: emailContr,
                isObscure: false,
              ),
              SizedBox(
                height: Dimension.height20,
              ),
              AppTextField(
                hintText: 'Phone Number',
                icon: Icons.phone,
                textController: phoneNumber,
                isObscure: false,
              ),
              SizedBox(
                height: Dimension.height20,
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
              const CustomButton(
                color: AppColors.redColor,
                text: "Register ",
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
