import 'package:flutter/material.dart';
import 'package:ictexpartbd/ui/widget/ict_expert_appbar.dart';
import 'package:ictexpartbd/ui/widget/ict_expert_drawer.dart';

class MathProblemScreen extends StatelessWidget {
  const MathProblemScreen({super.key});

  @override
  Widget build(BuildContext context) {

    var math_page_list = [
      'assets/math_problem/m1.png',
      'assets/math_problem/m2.png',
      'assets/math_problem/m3.png',
      'assets/math_problem/m4.png',
      'assets/math_problem/m5.png',
    ];

    return Scaffold(

      drawer: DrawerICTExpert(),
      body: Column(
        children: [
          const ICTExpartAppBar(),
          Expanded(
            child: ListView.builder(
                itemCount: math_page_list.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                    },
                    child: Padding(
                      // padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
                      padding: const EdgeInsets.all(8),
                      child: Image.asset(math_page_list[index]),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
