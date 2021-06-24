//import 'package:dev_quiz/core/app_colors.dart';
//import 'package:dev_quiz/core/app_text_styles.dart';
import 'package:flutter/material.dart';

class AwnserWidget extends StatelessWidget {
  final String title;

  const AwnserWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: Container(
        padding: EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                title,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
