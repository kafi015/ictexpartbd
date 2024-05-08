import 'package:flutter/material.dart';

class ProfilePersonalScreen extends StatelessWidget {
  const ProfilePersonalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('প্রোফাইল'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
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
                  Text('Raihan Hossain',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('একাদশ-দ্বাদশ',
                      style: TextStyle(fontWeight: FontWeight.w400)),
                  Text('অজিত গুহ মহাবিদ্যালয়',
                      style: TextStyle(fontWeight: FontWeight.w400)),
                ],
              ),
            ],
          ),
          //  const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {},
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.home,
                      size: 30,
                    ),
                    Text(
                      'হোম',
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
              TextButton(
                onPressed: () {},
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.add_box,
                      size: 30,
                    ),
                    Text(
                      'কোর্স',
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
              TextButton(
                onPressed: () {},
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.person,
                      size: 30,
                    ),
                    Text(
                      'প্রোফাইল',
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
          const SizedBox(
            height: 12,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            height: 40,
            width: 480,
            color: Colors.blueAccent.shade100,
            //child: Text('জন্ম তারিখঃ  16-07-1999'),
            child: RichText(
              text: const TextSpan(children: [
                TextSpan(
                  text: 'জন্ম তারিখঃ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: '16-07-1999',
                  style: TextStyle(fontWeight: FontWeight.w400),
                ),
              ]),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            height: 40,
            width: 480,
            //color: Colors.blueAccent.shade100,
            child: Text('মোবাইল নাম্বারঃ 01863995432'),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            height: 40,
            width: 480,
            color: Colors.blueAccent.shade100,
            child: Text('ইমেইলঃ hossahossainraihan02@gmail.com'),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            height: 40,
            width: 480,
            //color: Colors.blueAccent.shade100,
            child: Text('পিতার নামঃ Hafiz Abdul Hannan'),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            height: 40,
            width: 480,
            color: Colors.blueAccent.shade100,
            child: Text('মাতার নামঃ Hazera Begum'),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            height: 40,
            width: 480,
            //color: Colors.blueAccent.shade100,
            child: Text('ঠিকানাঃ Housing Estate, Section 4, Comilla'),
          ),
        ],
      ),
    );
  }
}
