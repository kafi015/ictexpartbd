import 'package:flutter/material.dart';
import 'package:ictexpartbd/ui/widget/ict_expert_drawer.dart';

class LecturePageScreen extends StatelessWidget {
  const LecturePageScreen({super.key});

  @override
  Widget build(BuildContext context) {

    var lecture_page_list = [
      'assets/lecture_page/video_lecture_img.png',
      'assets/lecture_page/lecture_note_img.png',
    ];

    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        backgroundColor: Colors.white,
        title: Text('Lecture Page Screen'),
        centerTitle: true,
      ),
      drawer: DrawerICTExpert(),
      body: ListView.builder(
          itemCount: lecture_page_list.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
              },
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
                child: Image.asset(lecture_page_list[index]),
              ),
            );
          }),
    );
  }
}
