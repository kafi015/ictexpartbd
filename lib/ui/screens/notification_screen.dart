import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        title: Text('Notification', style: TextStyle(fontWeight: FontWeight.w600, ),),
        centerTitle: true,
      ),

      body: Center(
        child: Text('Right now, There are no notification for you!',style: TextStyle(fontWeight: FontWeight.w500,)),
      ),


    );
  }
}
