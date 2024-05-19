import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ictexpartbd/ui/screens/profile_personal_screen.dart';
import 'package:ictexpartbd/ui/widget/ict_expert_appbar.dart';
import 'package:ictexpartbd/ui/widget/ict_expert_drawer.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ProfileHomeScreen extends StatelessWidget {
  const ProfileHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerICTExpert(),
      body: SingleChildScrollView(
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const ICTExpartAppBar(),
        const SizedBox(height: 24),
        const Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(30),
              child: CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('assets/home/gallery1.png'),
              ),
            ),
            //const SizedBox(height: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Raihan Hossain', style: TextStyle(fontWeight: FontWeight.bold)),
                Text('একাদশ-দ্বাদশ', style: TextStyle(fontWeight: FontWeight.w400)),
                Text('অজিত গুহ মহাবিদ্যালয়', style: TextStyle(fontWeight: FontWeight.w400)),
              ],
            ),
          ],
        ),
        //  const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(onPressed: () {},
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.home, size: 30,),
                  Text('হোম',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 36),
            TextButton(onPressed: () {},
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.add_box, size: 30,),
                  Text('কোর্স',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 36),
            TextButton(onPressed: () {
              Get.to(ProfilePersonalScreen());
            },
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.person, size: 30,),
                  Text('প্রোফাইল',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 12,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Card(
              color: Colors.white,
              shadowColor: Colors.blueAccent,
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: CircularPercentIndicator(
                  radius: 80,
                  animation: true,
                  animationDuration: 1000,
                  lineWidth: 20,
                  percent: 0.8,
                  progressColor: Colors.deepPurple,
                  circularStrokeCap: CircularStrokeCap.round,
                  center: const Text('80%',
                    style: TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  footer: const Text(
                    'সামগ্রিক অগ্রগতি',
                    style: TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Card(
              color: Colors.white,
              shadowColor: Colors.blueAccent,
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: CircularPercentIndicator(
                  radius: 80,
                  animation: true,
                  animationDuration: 1000,
                  lineWidth: 20,
                  percent: 0.8,
                  progressColor: Colors.blue,
                  circularStrokeCap: CircularStrokeCap.round,
                  center: const Text('80%',
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                  footer: const Text(
                    'প্রথম অধ্যায়',
                    style: TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20), // Space between rows
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Card(
              color: Colors.white,
              shadowColor: Colors.blueAccent,
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: CircularPercentIndicator(
                  radius: 80,
                  animation: true,
                  animationDuration: 1000,
                  lineWidth: 20,
                  percent: 0.8,
                  progressColor: Colors.red,
                  circularStrokeCap: CircularStrokeCap.round,
                  center: const Text('80%',
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                  footer: const Text(
                    'দ্বিতীয় অধ্যায়',
                    style: TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Card(
              color: Colors.white,
              shadowColor: Colors.blueAccent,
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: CircularPercentIndicator(
                  radius: 80,
                  animation: true,
                  animationDuration: 1000,
                  lineWidth: 20,
                  percent: 0.8,
                  progressColor: Colors.amber,
                  circularStrokeCap: CircularStrokeCap.round,
                  center: const Text('80%',
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                  footer: const Text(
                    'তৃতীয় অধ্যায়',
                    style: TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20), // Space between rows
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Card(
              color: Colors.white,
              shadowColor: Colors.blueAccent,
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: CircularPercentIndicator(
                  radius: 80,
                  animation: true,
                  animationDuration: 1000,
                  lineWidth: 20,
                  percent: 0.8,
                  progressColor: Colors.red,
                  circularStrokeCap: CircularStrokeCap.round,
                  center: const Text('80%',
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                  footer: const Text(
                    'চতুর্থ অধ্যায়',
                    style: TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Card(
              color: Colors.white,
              shadowColor: Colors.blueAccent,
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: CircularPercentIndicator(
                  radius: 80,
                  animation: true,
                  animationDuration: 1000,
                  lineWidth: 20,
                  percent: 0.8,
                  progressColor: Colors.amber,
                  circularStrokeCap: CircularStrokeCap.round,
                  center: const Text('80%',
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                  footer: const Text(
                    'পঞ্চম অধ্যায়',
                    style: TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    ),
    ),
    );
  }
}
