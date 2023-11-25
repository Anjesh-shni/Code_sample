import 'package:dish_home/config/route/route_helper.dart';
import 'package:dish_home/features/presentation/widget/custom_button.dart';
import 'package:dish_home/features/presentation/widget/small_text.dart';
import 'package:dish_home/features/presentation/widget/text_field.dart';
import 'package:dish_home/utils/app_colors.dart';
import 'package:dish_home/utils/app_dimension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../app/home_navigation/widget/custom_app_bar.dart';
import '../../widget/custom_row.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  final voucherCode = TextEditingController();
  List payments = ["Online Payment", "Cash On Delivery"];
  int _selectedIndex = 0;

  void onTapNavigation(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("Life Style HD"),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Dimension.height10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: Dimension.height10),
              Center(
                child: SmallTxt(
                  text: "Select Payment Method",
                  size: Dimension.font20,
                ),
              ),
              SizedBox(height: Dimension.height10),
              Container(
                height: Dimension.height10 * 16,
                child: ListView.builder(
                  itemCount: payments.length,
                  itemBuilder: (ctx, index) {
                    return InkWell(
                      onTap: () {
                        setState(() {
                          _selectedIndex = index;
                        });
                      },
                      child: Container(
                          height: Dimension.height64,
                          width: Dimension.height340,
                          margin:
                              EdgeInsets.symmetric(vertical: Dimension.height5),
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(Dimension.radius10),
                            color: AppColors.whiteGrey,
                            border: Border.all(
                                color: _selectedIndex == index
                                    ? AppColors.green
                                    : AppColors.grey),
                          ),
                          child: Center(
                            child: ListTile(
                              leading: SmallTxt(
                                text: payments[index],
                                size: Dimension.font20,
                              ),
                              trailing: Checkbox(
                                activeColor: AppColors.green,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(Dimension.radius50 * 2),
                                  ),
                                ),
                                value: _selectedIndex == index ? true : false,
                                onChanged: (val) {
                                  setState(() {
                                    _selectedIndex == index;
                                  });
                                },
                              ),
                            ),
                          )),
                    );
                  },
                ),
              ),
              CustomButton(
                color: AppColors.redColor,
                text: "Order Now",
                width: double.infinity,
                onTap: () {
                  Get.toNamed(RouteHelper.getSelectPaymentBank());
                },
              ),
              SizedBox(height: Dimension.height15),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: Dimension.height10,
                  vertical: Dimension.height10,
                ),
                height: Dimension.height350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimension.radius10),
                  color: AppColors.whiteShade,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SmallTxt(
                      text: "Order Summary",
                      size: Dimension.font20,
                    ),
                    SizedBox(
                      height: Dimension.height15,
                    ),
                    const CustomRow(text1: "Life style HD", text2: "1 month"),
                    SizedBox(height: Dimension.height10),
                    const CustomRow(
                        text1: "Suscription Charge", text2: "Rs. 4"),
                    SizedBox(height: Dimension.height10),
                    const CustomRow(
                        text1: "Setup Box Price Charge", text2: "Rs. 39"),
                    SizedBox(height: Dimension.height10),
                    const CustomRow(text1: "Total TV Charge", text2: "Rs. 48"),
                    SizedBox(height: Dimension.height10),
                    const CustomRow(text1: "Voucher Discount", text2: "Rs. 0"),
                    SizedBox(height: Dimension.height10),
                    const CustomRow(text1: "Sub Total", text2: "Rs. 48"),
                    SizedBox(height: Dimension.height10),
                    const CustomRow(text1: "Vat(13%)", text2: "Rs. 6"),
                    SizedBox(height: Dimension.height15),
                    const Divider(
                      color: AppColors.grey,
                      thickness: 0.4,
                    ),
                    SizedBox(height: Dimension.height15),
                    const CustomRow(text1: "Total Amount", text2: "Rs. 54"),
                  ],
                ),
              ),
              SizedBox(height: Dimension.height10),
              MyTextField(hintText: "Enter Voucher"),
              SizedBox(height: Dimension.height40),
              CustomButton(
                color: AppColors.grey,
                text: "Apply",
                width: double.infinity,
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
