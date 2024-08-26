import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ictexpartbd/ui/state_manager/log_in_controller.dart';
import 'package:ictexpartbd/ui/widget/auth_page_button.dart';
import 'package:ictexpartbd/ui/widget/auth_textfield.dart';
import 'package:ictexpartbd/ui/widget/home/home_title.dart';

import '../../utils/utils.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: GetBuilder<LogInController>(builder: (logInController) {
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 80,
                ),
                Image.asset(
                  appIcon,
                ),
                const SizedBox(
                  height: 30,
                ),
                Image.asset(
                  'assets/logo/book_image.png',
                ),
                const SizedBox(
                  height: 50,
                ),
                Center(
                  child: Text(
                    'Welcome To The ICT Expert Mobile Application',
                    textAlign: TextAlign.center,
                    style: appTextStyle.copyWith(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,

                    ),
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                AuthTextField(
                  label: 'Phone Number',
                  hintText: 'Enter your phone number',
                  controller: logInController.phoneNumberETController,
                  keyBoardType: TextInputType.number,
                  validator: (value){
                    if(value!.length != 11){
                      return 'Please enter 11 digit phone number';
                    }
                  },
                ),
                const SizedBox(
                  height: 80,
                ),
                AuthPageButton(
                  title: 'Go Ahead',
                  onPressed: () {},
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
