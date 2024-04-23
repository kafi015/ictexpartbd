import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ictexpartbd/ui/screens/about_screen.dart';
import 'package:ictexpartbd/ui/screens/home_screen.dart';

class DrawerICTExpert extends StatelessWidget {
  const DrawerICTExpert({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 250,
      child: ListView(
        children: [
          Container(
            height: 200,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/drawer/drawer_image.png'))),
          ),
          const SizedBox(
            height: 20,
          ),
          Card(
            color: const Color(0xff37568E),
            child: ListTile(
              onTap: () {
                Get.back();
                Get.off(HomeScreen());
              },
              leading: Image.asset(
                'assets/drawer/home_icon.png',
                scale: 2,
              ),
              title: const Text(
                'হোমপেজ',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          // DrawerItem(
          //     onTap: () {
          //       Get.to(const RoutineScreen());
          //     },
          //     title: 'রুটিন',
          //     icon: 'assets/drawer/routine_icon.png'),
          // DrawerItem(
          //     onTap: () {},
          //     title: 'এক্সপার্ট ব্লগ',
          //     icon: 'assets/drawer/blog_icon.png'),
          DrawerItem(
              onTap: () {
                Get.back();
                Get.to(const AboutUsScreen());
              },
              title: 'আমাদের সম্পর্কে',
              icon: 'assets/drawer/about_icon.png'),
          // DrawerItem(onTap: (){}, title: 'আমাদের সম্পর্কে', icon: 'assets/drawer/solution_icon.png'),
        ],
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.onTap,
    required this.title,
    required this.icon,
  });

  final VoidCallback onTap;
  final String title;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: Image.asset(
        icon,
        scale: 2,
      ),
      title: Text(
        title,
        style: const TextStyle(
            color: Color(0xff37568E),
            fontSize: 22,
            fontWeight: FontWeight.w600),
      ),
    );
  }
}
