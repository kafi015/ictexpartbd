import 'package:flutter/material.dart';

class HomeTitle extends StatelessWidget {
  const HomeTitle({
    super.key, required this.title_1, required this.title_2, required this.onPressedTitle_2,
  });
  final String title_1;
  final String title_2;
  final VoidCallback onPressedTitle_2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          Text(title_1,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w700,
              color: Color(0xff012970),
            ),
          ),
          const Spacer(),
          TextButton(
            onPressed: onPressedTitle_2,
            child: Row(children: [
              Text(title_2,
                style: const TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff4154F1),
                ),),
              const Icon(Icons.arrow_forward,color: Color(0xff4154F1),weight: 5,)
            ],),
          ),
        ],
      ),
    );
  }
}