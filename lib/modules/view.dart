import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../design_system/colors.dart';
import '../design_system/typography.dart';
import 'controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.find();

    return Scaffold(
      appBar: AppBar(
        title: Obx(() => Text(controller.pageTitle.value)),
        backgroundColor: AppColors.primary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to Gojek UI',
              style: AppTypography.heading,
            ),
            const SizedBox(height: 16),
            Text(
              'Experience seamless services at your fingertips.',
              style: AppTypography.body,
            ),
          ],
        ),
      ),
    );
  }
}
