import 'package:flutter/material.dart';

class RoutineScreen extends StatelessWidget {
  const RoutineScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 20,
        centerTitle: true,
        title: Text('রুটিন'),
      ),

      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Image.asset('assets/routine/model_test.png'),
              const SizedBox(height: 20,),
              Divider(thickness: 2, color: Colors.purple,),
              const SizedBox(height: 20,),
              Image.asset('assets/routine/exam_routine.png'),
              const SizedBox(height: 20,),
              Divider(thickness: 2, color: Colors.purple,),
              const SizedBox(height: 20,),
              Image.asset('assets/routine/offline_batch.png'),
              const SizedBox(height: 20,),
              Divider(thickness: 2, color: Colors.purple,),
              const SizedBox(height: 20,),
              Image.asset('assets/routine/online_batch.png'),
              const SizedBox(height: 20,),

            ],
          ),
        ),
      ),

    );
  }
}
