import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ictexpartbd/ui/utils/app_colors.dart';
import '../widget/home/home_elevated_button.dart';
import '../widget/home/home_title.dart';
import '../widget/home/home_activity_card.dart';
import '../widget/ict_expert_appbar.dart';
import '../widget/ict_expert_drawer.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final ValueNotifier<int> _sliderIndex = ValueNotifier(0);
  final ValueNotifier<int> _gellaryIndex = ValueNotifier(0);
  List sliderList = [
    'assets/home_page/home_slider1.png',
    'assets/home_page/home_slider2.png',
    'assets/home_page/home_slider3.png'
  ];

  List gellaryList = [
    'assets/home_page/gellary1.png',
    'assets/home_page/gellary2.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerICTExpert(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const ICTExpartAppBar(),
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      CarouselSlider(
                        options: CarouselOptions(
                            autoPlayInterval: const Duration(seconds: 6),
                            height: 300.0,
                            viewportFraction: 1,
                            autoPlay: true,
                            onPageChanged: (index, _) {
                              _sliderIndex.value = index;
                            }),
                        items: sliderList.map((slider) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Container(
                                width: MediaQuery.of(context).size.width,
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 5.0, vertical: 5.0),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      slider,
                                    ),
                                  ),
                                  //color: primaryColor,

                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                alignment: Alignment.center,
                                // child: Text(
                                //   '${slider['message']}',
                                //   style: const TextStyle(fontSize: 16.0),
                                // ),
                              );
                            },
                          );
                        }).toList(),
                      ),
                      // Positioned(
                      //   top: 100,
                      //   right: 10,
                      //   child: ValueListenableBuilder(
                      //     valueListenable: _sliderIndex,
                      //     builder: (context, currentIndex, _) => Column(
                      //       mainAxisAlignment: MainAxisAlignment.center,
                      //       children: [
                      //         for (int i = 0; i < (sliderList.length); i++)
                      //           Padding(
                      //             padding: const EdgeInsets.all(2.0),
                      //             child: Container(
                      //               height: 15,
                      //               width: 15,
                      //               decoration: BoxDecoration(
                      //                 color: i == currentIndex ? Colors.deepPurple : Colors.white,
                      //                 border: Border.all(color: Colors.grey,width: 2),
                      //                 borderRadius: BorderRadius.circular(10.0),
                      //               ),
                      //             ),
                      //           )
                      //       ],
                      //     ),
                      //   ),
                      // ),
                      Positioned(
                        top: 270,
                        left: 10,
                        right: 10,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            HomeElevatedButton(
                              title: 'বইটি পড়ে দেখো',
                              titleColor: whiteColor,
                              backgroundColor: const Color(0xff4154F1),
                              onPressed: () {},
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            HomeElevatedButton(
                              title: 'কুইজে অংশ নাও',
                              titleColor: whiteColor,
                              backgroundColor: const Color(0xff012970),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      HomeActivityCard(
                        percent: 0.8,
                        progressColor: Colors.purple,
                        percentText: '80%',
                        title: 'সামগ্রিক অগ্রগতি',
                      ),
                      HomeActivityCard(
                        percent: 0.7,
                        progressColor: Color(0xff4154F1),
                        percentText: '70%',
                        title: 'প্রথম অধ্যায়',
                      ),
                    ],
                  ),
                  const SizedBox(height: 10), // Space between rows
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      HomeActivityCard(
                        percent: 0.2,
                        progressColor: Colors.red,
                        percentText: '20%',
                        title: 'দ্বিতীয় অধ্যায়',
                      ),
                      HomeActivityCard(
                        percent: 0.85,
                        progressColor: Colors.yellow,
                        percentText: '85%',
                        title: 'তৃতীয় অধ্যায়',
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 16,
                  ),
                  Stack(
                    children: [
                      Image.asset(
                        'assets/home_page/home_leader_board.png',
                        fit: BoxFit.cover,
                      ),
                      Positioned(
                        top: 75,
                        left: 108,
                        child: Padding(
                          padding:
                              const EdgeInsets.symmetric(horizontal: 115.0),
                          child: HomeElevatedButton(
                              title: 'কুইজে অংশ নাও',
                              titleColor: whiteColor,
                              backgroundColor: const Color(0xff012970),
                              onPressed: () {}),
                        ),
                      ),
                    ],
                  ),

                  // HomeTitle(title_1: 'ভিডিও লেকচার', title_2: 'সব দেখুন',onPressedTitle_2: (){},),
                  const SizedBox(
                    height: 10,
                  ),

                  HomeTitle(
                    title_1: 'গ্যালারী',
                    title_2: 'সব দেখুন',
                    onPressedTitle_2: () {},
                  ),
                  // const SizedBox(height: 10,),
                  CarouselSlider(
                    options: CarouselOptions(
                        autoPlayInterval: const Duration(seconds: 6),
                        height: 300.0,
                        viewportFraction: 1,
                        autoPlay: true,
                        onPageChanged: (index, _) {
                          _gellaryIndex.value = index;
                        }),
                    items: gellaryList.map((slider) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: const EdgeInsets.symmetric(
                                horizontal: 5.0, vertical: 5.0),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  slider,
                                ),
                              ),
                              //color: primaryColor,

                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            alignment: Alignment.center,
                            // child: Text(
                            //   '${slider['message']}',
                            //   style: const TextStyle(fontSize: 16.0),
                            // ),
                          );
                        },
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
