import 'package:dish_home/features/presentation/widget/custom_button.dart';
import 'package:dish_home/features/presentation/widget/text_field.dart';
import 'package:dish_home/utils/app_colors.dart';
import 'package:dish_home/utils/app_dimension.dart';
import 'package:dish_home/utils/string_icon_image.dart';
import 'package:flutter/material.dart';
import '../../widget/custom_row.dart';
import '../../widget/small_text.dart';

class SupportPage extends StatefulWidget {
  const SupportPage({super.key});

  @override
  State<SupportPage> createState() => _SupportPageState();
}

class _SupportPageState extends State<SupportPage> {
  String dropdownValue = channelList.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: Dimension.height15,
          vertical: Dimension.height10,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: SmallTxt(
                  text: "Drop us a Line",
                  size: Dimension.font30,
                  color: AppColors.navyDark,
                ),
              ),
              SizedBox(height: Dimension.height10),
              SmallTxt(
                text: supportText,
                color: AppColors.grey,
                size: Dimension.font16,
              ),
              SizedBox(height: Dimension.height30),
              SmallTxt(
                text: "Nature of enquiry",
                size: Dimension.font18,
              ),
              SizedBox(height: Dimension.height10),
              DropdownMenu<String>(
                width: 350,
                initialSelection: channelList.first,
                onSelected: (String? value) {
                  setState(() {
                    dropdownValue = value!;
                  });
                },
                dropdownMenuEntries:
                    channelList.map<DropdownMenuEntry<String>>((String value) {
                  return DropdownMenuEntry<String>(value: value, label: value);
                }).toList(),
              ),
              SizedBox(height: Dimension.height20),
              SmallTxt(
                text: "Full Name",
                size: Dimension.font18,
              ),
              SizedBox(height: Dimension.height10),
              MyTextField(
                hintText: "Simran Rana",
              ),
              SizedBox(height: Dimension.height20),
              SmallTxt(
                text: "Email",
                size: Dimension.font18,
              ),
              SizedBox(height: Dimension.height10),
              MyTextField(
                hintText: "anjesh1@gmail.com",
              ),
              SizedBox(height: Dimension.height20),
              SmallTxt(
                text: "Phone Number",
                size: Dimension.font18,
              ),
              SizedBox(height: Dimension.height10),
              MyTextField(
                hintText: "9819868628",
              ),
              SizedBox(height: Dimension.height20),
              SmallTxt(
                text: "Discription",
                size: Dimension.font18,
              ),
              SizedBox(height: Dimension.height10),
              MyTextField(
                hintText: "Enter your problem in details",
              ),
              SizedBox(height: Dimension.height30),
              CustomButton(
                  color: AppColors.redColor,
                  text: "Submit",
                  width: double.infinity,
                  onTap: () {}),
              SizedBox(height: Dimension.height30),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: Dimension.height10,
                  vertical: Dimension.height10,
                ),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimension.radius10),
                  color: AppColors.whiteShade,
                  border: Border.all(
                    color: AppColors.grey,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SmallTxt(
                      text: "Contact",
                      size: Dimension.font26,
                      color: AppColors.darkNAVY,
                    ),
                    SizedBox(height: Dimension.height15),
                    const CustomRowWithIcons(
                      icons: Icons.support_agent_sharp,
                      text1: "Help Desk:",
                      text2: "01-4217666",
                    ),
                    SizedBox(height: Dimension.height15),
                    const CustomRowWithIcons(
                      icons: Icons.message_rounded,
                      text1: "Viber:",
                      text2: "9819868628",
                    ),
                    SizedBox(height: Dimension.height15),
                    const CustomRowWithIcons(
                      icons: Icons.wechat_sharp,
                      text1: "WhatsApp:",
                      text2: "9819868628",
                    ),
                    SizedBox(height: Dimension.height15),
                    const CustomRowWithIcons(
                      icons: Icons.email,
                      text1: "Email:",
                      text2:
                          "support@dishhome.com.np\n helpdesk@dishhome.com.np",
                    ),
                  ],
                ),
              ),
              SizedBox(height: Dimension.height20),
              Center(
                child: SmallTxt(
                  text: "Chat with Us",
                  color: AppColors.darkNAVY,
                  size: Dimension.font26,
                ),
              ),
              SizedBox(height: Dimension.height10),
              SmallTxt(
                text: supportText,
                color: AppColors.grey,
                size: Dimension.font16,
              )
            ],
          ),
        ),
      ),
    );
  }
}

const List<String> channelList = <String>["Internet ", "Router", "Wifi plan"];
