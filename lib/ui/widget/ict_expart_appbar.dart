import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/utils.dart';

class ICTExpartAppBar extends StatelessWidget {
  const ICTExpartAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: whiteColor,
      elevation: 30,
      leading: const Icon(Icons.menu),
      title: Image.asset(Utils.appIcon),
      centerTitle: true,
      actions: const[
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(Icons.notifications),
        )
      ],
    );
  }
}