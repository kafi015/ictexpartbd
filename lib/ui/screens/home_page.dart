import 'package:flutter/material.dart';
import 'package:ictexpartbd/ui/screens/widget/home_activity_card.dart';
import '../utils/utils.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: Image.asset(Utils.appIcon),
        centerTitle: true,
        actions: const[
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.notifications),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 300,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/home_page/home_slider1.png'),
                  ),
                ),
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  /*Positioned(
                    top: 10,
                      left: 50,
                      child: Text('Hello'),
                  ),*/
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 8,
                          foregroundColor: Colors.indigo,
                          //shadowColor: Colors.black,
                          backgroundColor: Colors.blue,
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Read This 1 -->',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Read This 2'),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  HomeActivityCard(percent: 0.4, progressColor: Colors.deepPurple, percentText: '40%', title: 'Your Activity',),
                  HomeActivityCard(percent: 0.7, progressColor: Colors.blue, percentText: '70%', title: 'Your Activity',),

                ],
              ),
              const SizedBox(height: 20), // Space between rows
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  HomeActivityCard(percent: 0.2, progressColor: Colors.red, percentText: '20%', title: 'Your Activity',),
                  HomeActivityCard(percent: 0.9, progressColor: Colors.yellow, percentText: '90%', title: 'Your Activity',),

                ],
              ),


              const SizedBox(height: 16,),
              Container(
                height: 200,
                width: double.infinity,
                color: Colors.cyan,
                child: Row(
                  children: [
                    const SizedBox(width: 8,),
                    Expanded(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const CircleAvatar(
                              radius: 40,
                              backgroundColor: Colors.black12,
                              child: Text('Ali'),
                            ),
                            const SizedBox(width: 24,),
                            const CircleAvatar(
                              radius: 40,
                              backgroundColor: Colors.black12,
                              child: Text('Kafi'),
                            ),
                            const SizedBox(width: 24,),
                            const CircleAvatar(
                              radius: 40,
                              backgroundColor: Colors.black12,
                              child: Text('Araf'),
                            ),
                            const SizedBox(width: 32,),
                            ElevatedButton(onPressed: (){},
                              child: const Text('Go to quiz'),),
                          ],
                        ),
                      ),),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

