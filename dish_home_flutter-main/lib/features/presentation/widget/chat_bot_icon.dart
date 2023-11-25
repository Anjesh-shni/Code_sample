import 'package:dish_home/utils/app_dimension.dart';
import 'package:flutter/material.dart';

class ChatBotLogo extends StatelessWidget {
  const ChatBotLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/icons/chatBot.png",
      width: Dimension.height40,
    );
  }
}
