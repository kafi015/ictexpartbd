import 'package:flutter/material.dart';
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
      color: Colors.white,
      shadowColor: Colors.blueAccent,
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: CircularPercentIndicator(
          radius: 80,
          animation: true,
          animationDuration: 1000,
          lineWidth: 20,
          percent: percent,
          progressColor: progressColor,
          circularStrokeCap: CircularStrokeCap.round,
          center: Text(percentText,
              style: const TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold)),
          footer: Text(
            title,
            style: const TextStyle(
                fontSize: 12, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
