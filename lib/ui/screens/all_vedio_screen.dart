import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ictexpartbd/ui/screens/video_play_screen.dart';

class AllVideoScreen extends StatelessWidget {
  const AllVideoScreen({super.key});

  @override
  Widget build(BuildContext context) {

    var video_lecture_list = [
      'assets/all_video_lecture/c1.png',
      'assets/all_video_lecture/c2.png',
      'assets/all_video_lecture/c3.png',
      'assets/all_video_lecture/c4.png',
      'assets/all_video_lecture/c5.png',
      'assets/all_video_lecture/c6.png',
    ];

    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        backgroundColor: Colors.white,
        title: Text('All Video Lecture'),
        centerTitle: true,
      ),

      body: ListView.builder(
        itemCount: video_lecture_list.length,
        itemBuilder: (context, index){
          return InkWell(
            onTap: (){
              Get.to(VideoPlayScreen(image: video_lecture_list[index]));
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
              child: Image.asset(video_lecture_list[index]),
            ),
          );
        },
      ),

    );
  }
}
