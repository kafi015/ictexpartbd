import 'package:flutter/material.dart';
import 'package:ictexpartbd/ui/screens/home_page.dart';
import '../../utils/utils.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 1))
        .then((value) => {const HomeScreen()});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.center,
         children: [
           Image.asset('assets/logo/book_image.png',),
           Image.asset(Utils.appIcon,),
         ],
       ),
     ),
    );
  }
}
