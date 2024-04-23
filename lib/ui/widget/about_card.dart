import 'package:flutter/material.dart';

class AboutCard extends StatelessWidget {
  const AboutCard({
    super.key, required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: Colors.white,
      child: Container(
        height: 130,
        width: 175,
        padding: const EdgeInsets.symmetric(
            vertical: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/about_check_icon.png'),
            Center(
              child: Text(title,
                style: const TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff012970),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}