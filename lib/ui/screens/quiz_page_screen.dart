import 'package:flutter/material.dart';
import 'package:ictexpartbd/ui/widget/ict_expert_appbar.dart';
import 'package:ictexpartbd/ui/widget/ict_expert_drawer.dart';
import 'package:percent_indicator/percent_indicator.dart';

class QuizPageScreen extends StatelessWidget {
  const QuizPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerICTExpert(),

      body: SingleChildScrollView(
        child: Column(
          children: [
            ICTExpartAppBar(),
            const SizedBox(height: 16,),
            Container(
              margin: const EdgeInsets.only(left: 10, right: 10),
              //alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              height: 230,
              width: 500,
              //color: Colors.deepPurple,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // here we can use Stack
                  Stack(
                    children: [
                      const Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          '  প্রথম অধ্যায়',
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: CircularPercentIndicator(
                          radius: 20,
                          lineWidth: 4,
                          percent: 0.7,
                          progressColor: Colors.redAccent,
                          center: const Text(
                            '80%',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12,),
                  InkWell(
                    onTap: (){},
                    child: Container(
                      height: 140,
                      width: 430,
                      //color: Colors.white,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          const SizedBox(width: 16,),
                          Image.asset('assets/quiz_page/quiz_page_icon.png',
                            height: 70,
                            width: 80,
                            fit: BoxFit.fill,
                            //alignment: Alignment.centerLeft,
                          ),
                          const SizedBox(width: 20,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 40),
                              const Text(
                                'বিশ্ব ও বাংলাদেশ প্রেক্ষিত',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(height: 8),
                              RichText(
                                //textAlign: TextAlign.start,
                                text: const TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'সর্বমোট প্রশ্নঃ 20, ',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black,
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' সময়ঃ 20 মিনিট',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16,),

            Container(
              margin: const EdgeInsets.only(left: 10, right: 10),
              //alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              height: 230,
              width: 500,
              //color: Colors.deepPurple,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // here we can use Stack
                  Stack(
                    children: [
                      const Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          '  দ্বিতীয় অধ্যায়',
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: CircularPercentIndicator(
                          radius: 20,
                          lineWidth: 4,
                          percent: 0.7,
                          progressColor: Colors.redAccent,
                          center: const Text(
                            '70%',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12,),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 140,
                      width: 430,
                      //color: Colors.white,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          const SizedBox(width: 16,),
                          Image.asset('assets/quiz_page/quiz_page_icon.png',
                            height: 70,
                            width: 80,
                            fit: BoxFit.fill,
                            //alignment: Alignment.centerLeft,
                          ),
                          const SizedBox(width: 20,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 40),
                              const Text(
                                'ডেটা কমিউনিকেশন সিস্টেমস '
                                    '\nও নেটওয়ার্কিং',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(height: 6),
                              RichText(
                                //textAlign: TextAlign.start,
                                text: const TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'সর্বমোট প্রশ্নঃ 20, ',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black,
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' সময়ঃ 20 মিনিট',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16,),

            Container(
              margin: const EdgeInsets.only(left: 10, right: 10),
              //alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              height: 230,
              width: 500,
              //color: Colors.deepPurple,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // here we can use Stack
                  Stack(
                    children: [
                      const Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          '  তৃতীয় অধ্যায়',
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: CircularPercentIndicator(
                          radius: 20,
                          lineWidth: 4,
                          percent: 0.7,
                          progressColor: Colors.redAccent,
                          center: const Text(
                            '80%',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12,),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 140,
                      width: 430,
                      //color: Colors.white,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          const SizedBox(width: 16,),
                          Image.asset('assets/quiz_page/quiz_page_icon.png',
                            height: 70,
                            width: 80,
                            fit: BoxFit.fill,
                            //alignment: Alignment.centerLeft,
                          ),
                          const SizedBox(width: 20,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 40),
                              const Text(
                                'সংখ্যা পদ্ধতি',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(height: 8),
                              RichText(
                                //textAlign: TextAlign.start,
                                text: const TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'সর্বমোট প্রশ্নঃ 20, ',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black,
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' সময়ঃ 20 মিনিট',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24,),
          ],
        ),
      ),
    );
  }
}
