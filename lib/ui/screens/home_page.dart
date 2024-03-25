import 'package:flutter/material.dart';
import 'package:ictexpartbd/ui/utils/app_colors.dart';

import '../utils/utils.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: whiteColor,
        elevation: 6,
        leading: const Icon(Icons.menu),
        title: Image.asset(Utils.appIcon),
        centerTitle: true,

        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.notifications),
          ),
        ],

      ),
    );
  }
}
