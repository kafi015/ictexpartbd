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

    double height = MediaQuery.of(context).size.height;
    //double width = MediaQuery.of(context).size.width;

    return Card(
      color: whiteColor,
      shadowColor: Colors.blueAccent,
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: CircularPercentIndicator(
          radius: height * 0.07,
          animation: true,
          animationDuration: 1000,
          lineWidth: 18,
          percent: percent,
          progressColor: progressColor,
          circularStrokeCap: CircularStrokeCap.round,
          center: Text(percentText,
              style: const TextStyle(
                  fontSize: 18, fontWeight: FontWeight.bold)),
          footer: Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child: Text(
              title,
              style: const TextStyle(
                  fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
