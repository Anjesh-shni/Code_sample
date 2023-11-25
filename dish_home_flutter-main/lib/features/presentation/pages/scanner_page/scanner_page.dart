import 'package:flutter/material.dart';
import '../../../../app/home_navigation/widget/custom_app_bar.dart';

class ScannerPage extends StatelessWidget {
  const ScannerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("Scan"),
    );
  }
}
