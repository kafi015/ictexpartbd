import 'package:flutter/material.dart';
import 'package:ictexpartbd/ui/utils/app_colors.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class HomeActivityCard extends StatelessWidget {
  const HomeActivityCard({
    super.key, required this.percent, required this.progressColor, required this.percentText, required this.title,
  });
  final double percent;
  final Color progressColor;
  final String percentText;
  final String title;


  @override
  Widget build(BuildContext context) {
    return Card(
      color: whiteColor,
      shadowColor: Colors.blueAccent,
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CircularPercentIndicator(
          radius: 70,
          animation: true,
          animationDuration: 1000,
          lineWidth: 18,
          percent: percent,
          progressColor: progressColor,
          circularStrokeCap: CircularStrokeCap.round,
          center: Text(percentText,
              style: const TextStyle(
                  fontSize: 24, fontWeight: FontWeight.bold)),
          footer: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              title,
              style: const TextStyle(
                  fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
