import 'package:flutter/material.dart';
import 'package:ictexpartbd/ui/utils/app_colors.dart';

class HomeElevatedButton extends StatelessWidget {
  const HomeElevatedButton({
    super.key, required this.title, required this.titleColor, required this.backgroundColor, required this.onPressed,
  });

  final String title;
  final Color titleColor;
  final Color backgroundColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        elevation: 8,
        //foregroundColor: Colors.indigo,
        shadowColor: backgroundColor,
        backgroundColor: backgroundColor,

      ),
      onPressed: onPressed,
      child: Center(
        child: Row(
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: titleColor,
              ),
            ),
            const SizedBox(width: 1,),
            Icon(Icons.arrow_forward,color: whiteColor,),
          ],
        ),
      ),
    );
  }
}
