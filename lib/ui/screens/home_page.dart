import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../utils/utils.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(Utils.appIcon),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: double.infinity,
                color: Colors.redAccent,
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
                        child: Text(
                          'Read This 1 -->',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('Read This 2'),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
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
                        percent: 0.4,
                        progressColor: Colors.deepPurple,
                        circularStrokeCap: CircularStrokeCap.round,
                        center: Text('40%',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        footer: Text(
                          'Your Activity',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
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
                        percent: 0.7,
                        progressColor: Colors.blue,
                        circularStrokeCap: CircularStrokeCap.round,
                        center: Text('70%',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        footer: Text(
                          'Your Activity',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20), // Space between rows
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    color: Colors.white,
                    shadowColor: Colors.blueAccent,
                    elevation: 4,
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: CircularPercentIndicator(
                        radius: 80,
                        animation: true,
                        animationDuration: 1000,
                        lineWidth: 20,
                        percent: 0.2,
                        progressColor: Colors.red,
                        circularStrokeCap: CircularStrokeCap.round,
                        center: Text('20%',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        footer: Text(
                          'Your Activity',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    shadowColor: Colors.blueAccent,
                    elevation: 4,
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: CircularPercentIndicator(
                        radius: 80,
                        animation: true,
                        animationDuration: 1000,
                        lineWidth: 20,
                        percent: 0.9,
                        progressColor: Colors.amber,
                        circularStrokeCap: CircularStrokeCap.round,
                        center: Text('90%',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        footer: Text(
                          'Your Activity',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16,),
              Container(
                height: 200,
                width: double.infinity,
                color: Colors.cyan,
                child: Row(
                  children: [
                    SizedBox(width: 8,),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 40,
                            backgroundColor: Colors.black12,
                            child: Text('Ali'),
                          ),
                          SizedBox(width: 24,),
                          CircleAvatar(
                            radius: 40,
                            backgroundColor: Colors.black12,
                            child: Text('Kafi'),
                          ),
                          SizedBox(width: 24,),
                          CircleAvatar(
                            radius: 40,
                            backgroundColor: Colors.black12,
                            child: Text('Araf'),
                          ),
                          SizedBox(width: 32,),
                          ElevatedButton(onPressed: (){},
                            child: Text('Go to quiz'),),
                        ],
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
