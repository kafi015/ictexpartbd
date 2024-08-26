import 'package:flutter/material.dart' hide CarouselController;
import 'package:get/get.dart';
import 'package:ictexpartbd/ui/screens/authentication/splash_screen.dart';
import 'package:ictexpartbd/ui/state_manager/home_controller.dart';
import 'package:ictexpartbd/ui/state_manager/log_in_controller.dart';

void main()
{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static GlobalKey<NavigatorState> globalKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: GetXBinding(),
      debugShowCheckedModeBanner: false,
      home:const SplashScreen(),
    );
  }
}


class GetXBinding extends Bindings {
  @override
  void dependencies(){
    Get.put(HomeController());
    Get.put(LogInController());
  }
}