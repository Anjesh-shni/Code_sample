import 'package:dish_home/app/home_navigation/widget/custom_app_bar.dart';
import 'package:dish_home/config/route/route_helper.dart';
import 'package:dish_home/features/presentation/widget/custom_button.dart';
import 'package:dish_home/features/presentation/widget/custom_text_field.dart';
import 'package:dish_home/features/presentation/widget/text_field.dart';
import 'package:dish_home/utils/app_colors.dart';
import 'package:dish_home/utils/app_dimension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../widget/custom_row.dart';
import '../../widget/small_text.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  final addressController = TextEditingController();
  final CameraPosition _cameraPosition =
      const CameraPosition(target: LatLng(27.7172, 85.3240), zoom: 16);
  late final LatLng _initalPosition = const LatLng(27.7172, 85.3240);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("Life Style HD"),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: Dimension.height10),
            Container(
              margin: EdgeInsets.symmetric(horizontal: Dimension.height10),
              padding: EdgeInsets.symmetric(horizontal: Dimension.height10),
              height: Dimension.height450,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimension.height10),
                color: AppColors.whiteShade,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: Dimension.height10),
                  SmallTxt(
                    text: "Deliver to : Anjesh Sahani",
                    size: Dimension.font20,
                  ),
                  SizedBox(height: Dimension.height10),
                  Container(
                    width: Dimension.height380,
                    height: Dimension.height10 * 25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimension.radius10),
                      border: Border.all(color: AppColors.grey),
                    ),
                    child: GoogleMap(
                      initialCameraPosition: CameraPosition(
                        target: _initalPosition,
                        zoom: 16,
                      ),
                      zoomControlsEnabled: true,
                      mapType: MapType.normal,
                      compassEnabled: false,
                      indoorViewEnabled: true,
                      mapToolbarEnabled: false,
                      myLocationButtonEnabled: true,
                      myLocationEnabled: true,
                    ),
                  ),
                  SizedBox(height: Dimension.height10),
                  AppTextField(
                    icon: Icons.search,
                    textController: addressController,
                    hintText: "Search here...",
                  ),
                  SizedBox(height: Dimension.height10),
                  CustomButton(
                    color: AppColors.redColor,
                    text: "Contnue",
                    onTap: () {
                      Get.toNamed(RouteHelper.getPaymentPage());
                    },
                  ),
                  SizedBox(height: Dimension.height20),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: Dimension.height10, vertical: Dimension.height10),
              padding: EdgeInsets.symmetric(
                  horizontal: Dimension.height10, vertical: Dimension.height10),
              height: Dimension.height350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimension.height10),
                color: AppColors.whiteShade,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SmallTxt(text: "Order Summary", size: Dimension.font20),
                  SizedBox(
                    height: Dimension.height15,
                  ),
                  const CustomRow(text1: "Life style HD", text2: "1 month"),
                  SizedBox(height: Dimension.height10),
                  const CustomRow(text1: "Suscription Charge", text2: "Rs. 4"),
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
            SizedBox(height: Dimension.height20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimension.height15),
              child: MyTextField(hintText: "Enter Voucher"),
            ),
            SizedBox(height: Dimension.height10),
            CustomButton(
              color: AppColors.redColor,
              text: "Apply",
              width: Dimension.height380,
              onTap: () {},
            ),
            SizedBox(height: Dimension.height10),
          ],
        ),
      ),
    );
  }
}
