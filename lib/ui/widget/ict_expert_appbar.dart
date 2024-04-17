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
      leading: Builder(
        builder: (BuildContext context) {
          return IconButton(
            icon: const Icon(
              Icons.menu,
            //  color: Colors.purple,
              size: 24,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          );
        },
      ),
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