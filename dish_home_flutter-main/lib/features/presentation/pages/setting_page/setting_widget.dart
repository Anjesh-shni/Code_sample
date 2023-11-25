import 'package:flutter/material.dart';
import '../../../../utils/app_dimension.dart';
import '../../widget/small_text.dart';

class AccountWidget extends StatelessWidget {
  final Widget appIcon;
  final SmallTxt bigText;
  const AccountWidget({Key? key, required this.appIcon, required this.bigText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimension.height70,
      margin: EdgeInsets.only(top: Dimension.height15),
      padding: EdgeInsets.only(
          left: Dimension.width20,
          top: Dimension.width10,
          bottom: Dimension.width10),
      decoration: BoxDecoration(
          color: const Color(0xffFCFCFD),
          borderRadius: BorderRadiusDirectional.circular(Dimension.radius15),
          boxShadow: [
            BoxShadow(
              blurRadius: 8,
              offset: const Offset(0, 5),
              color: Colors.grey.withOpacity(.1),
            ),
          ],
          border: Border.all(
            color: Colors.grey.withOpacity(.2),
          )),
      child: Row(
        children: [
          appIcon,
          SizedBox(
            width: Dimension.width10,
          ),
          bigText,
        ],
      ),
    );
  }
}
