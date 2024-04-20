import 'package:flutter/material.dart';
import 'package:ictexpartbd/ui/widget/ict_expert_appbar.dart';

import '../widget/about_card.dart';
import '../widget/ict_expert_drawer.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerICTExpert(),
      body: Column(
        children: [
          const ICTExpartAppBar(),
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  const Card(
                    color: Color(0xffD9E6FF),
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'বই সম্পর্কে',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xff012970),
                        ),
                      ),
                    ),
                  ),
                  const Text(
                    'আইসিটি এক্সপার্ট বইয়ে যা যা পাবে',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff012970),
                    ),
                  ),
                  Image.asset(
                    'assets/logo/book_image.png',
                    scale: 1,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AboutCard(
                          title: 'সিলেবাসের সকল টপিক',
                        ),
                        AboutCard(
                          title: 'চিত্র সহকারে বিশ্লেষণ',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AboutCard(
                          title: 'সগাণিতিক বিষয়গুলোর ব্যাখ্যা',
                        ),
                        AboutCard(
                          title: 'জটিল বিষয়গুলোর বাস্তব উদাহরণ',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AboutCard(
                          title: 'সঅধ্যায়ভিত্তিক এক্সারসাইজ',
                        ),
                        AboutCard(
                          title: 'বোর্ডের প্রশ্নগুলোর ব্যাখ্যাসহ উত্তর',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'লেখকের বক্তব্য',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff012970),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'আইসিটির গুরুত্ব',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff3566F4),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 5.0),
                    child: Text(
                      'বর্তমান বিশ্বের সবচেয়ে আলোচিত ও গুরুত্বপূর্ণ বিষয় তথ্য ও যোগাযোগ প্রযুক্তি। শিল্প বিপ্লবের পর তথ্য ও যোগাযোগ প্রযুক্তির উন্নয়ন পৃথিবীতে সবচেয়ে উল্লেখযোগ্য ঘটনা। '
                      'তথ্য ও যোগাযোগ প্রযুক্তির ক্ষেত্রে নজিরবিহীন উন্নতির ফলে গোটা বিশ্ব আজ গ্লোবাল ভিলেজে পরিণত হয়েছে। যে জাতি তথ্যপ্রযুক্তিতে যত বেশি দক্ষ, তাদের সার্বিক অবস্থাও তত বেশি উন্নত। '
                      'একবিংশ শতাব্দীর চ্যালেঞ্জ মোকাবিলায় প্রস্তুত হতে এবং জ্ঞান, বিজ্ঞান ও প্রযুক্তিতে বিশ্ব পরিমণ্ডলে নিজ অবস্থান সুদৃঢ় ও উজ্জ্বল করতে হলে তথ্যপ্রযুক্তির কোনো বিকল্প নেই। '
                      'কারণ একবিংশ শতাব্দীর সম্ভাবনা ও চ্যালেঞ্জ দুইই আবর্তিত হচ্ছে তথ্যপ্রযুক্তিকে ঘিরে।\r\n'
                      'উচ্চ মাধ্যমিকের তথ্য ও যোগাযোগ প্রযুক্তির সিলেবাস অনুযায়ী ৫০ নম্বরের লিখিত পরীক্ষা ও ২৫ নম্বরের বহুনির্বাচনী পরীক্ষা হয়। তথ্য ও যোগাযোগ প্রযুক্তি বিষয়ের কোন দ্বিতীয় পত্র নেই, '
                      'তাই শিক্ষার্থীদের এই বিষয়ে A+ পাওয়াটা একটু কঠিন। কারন বাকি সকল বিষয়ের ২টা পত্র, একটা পত্রে কম পেলে অন্য পত্র সেটাকে মিলিয়ে দিতে পারে। '
                      'কিন্তু তথ্য ও যোগাযোগ প্রযুক্তির ক্ষেত্রে এমনটা হয় না। আবার শিক্ষার্থীরা কেবল থিওরি টপিক গুলো ভাল করে শেষ করে কিন্তু নৈর্বিক্তিক তেমন অনুশীলন করে না। '
                      'যার কারনে নৈর্বিক্তিকে অনেক কম নম্বর পেয়ে A+ ছুটে যায়। তাই তোমাদের অবশ্যই সৃজনশীল প্রশ্ন অনুশীলনের পাশাপাশি নৈর্বিক্তিকের দিকে জোর দিতে হবে।\r\n'
                      'যখন তুমি একটা অধ্যায় পড়া শুরু করবা, সেক্ষেত্রে আইসিটি এক্সপার্ট বইয়ের সিরিয়ালি যেতে হবে। এই বইয়ের প্রতিটি টপিক এমন সিরিয়ালি সাজানো হয়েছে, '
                      'যাতে তোমাকে বেসিক লেভেল থেকে সিরিয়ালি এডভান্স লেভেলে নিয়ে যাবে এবং শেষ পর্যন্ত অধ্যায়টা শেষ করে নৈর্বিক্তিক আলোচনা করে সৃজনশীল প্রশ্নগুলো দেওয়া হয়েছে। '
                      'এই বইয়ের সিরিয়ালি একটা অধ্যায় শেষ করলে, ঐ অধ্যায়টা তোমার সম্পূর্ণ শেষ হয়ে যাবে। সবচেয়ে গুরুত্বপূর্ণ ব্যাপার হচ্ছে, এই বইতে সকল নৈর্বিক্তিকের ব্যাখ্যা দেওয়া হয়েছে, '
                      'যা একজন শিক্ষার্থীকে নৈর্বিক্তিক বুঝার জন্যে অনেক বেশি সাহায্য করবে।',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Image.asset('assets/photo.png'),
                  const SizedBox(height: 20,),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
