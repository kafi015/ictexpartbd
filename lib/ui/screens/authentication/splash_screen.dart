import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ictexpartbd/ui/screens/home_screen.dart';
import 'package:ictexpartbd/ui/state_manager/home_controller.dart';
import '../../utils/utils.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1))
        .then((value) => {
          Get.find<HomeController>().getStudentReview(),
          Get.off(HomeScreen()
          )});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo/book_image.png',
            ),
            const SizedBox(
              height: 20,
            ),
            Image.asset(
              Utils.appIcon,
            ),
          ],
        ),
      ),
    );
  }
}
