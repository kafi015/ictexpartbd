import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class VideoPlayScreen extends StatelessWidget {
  VideoPlayScreen({super.key, required this.image});

  final String image;
  final Uri _url = Uri.parse('https://www.youtube.com/playlist?list=PLMiZr2T2EejyFHzejoI8_8osHRDKKWmb-');

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

      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10,),
          InkWell(
            onTap: (){
              _launchUrl();
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(image),
            ),
          ),
          const SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text('প্রাসঙ্গিক ভিডিও',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Color(0xff012970),
              ),
            ),
          ),
          const SizedBox(height: 10,),
         Expanded(
             child: ListView.builder(
               itemCount: video_lecture_list.length,
               itemBuilder: (context, index){
                 return InkWell(
                   onTap: ()=> _launchUrl(),
                   child: Padding(
                     padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
                     child: Image.asset(video_lecture_list[index]),
                   ),
                 );
               },
             ),
         ),

        ],
      ),
    );
  }
  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }
}
