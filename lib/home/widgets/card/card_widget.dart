import 'package:devop_jobs/core/app_colors.dart';
import 'package:devop_jobs/core/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:devop_jobs/core/app_images.dart';

class QuizCardWidget extends StatefulWidget {
  final String nomeIdade;
  final String cidade;
  final String vaga;

  QuizCardWidget(
      {Key? key,
      required this.nomeIdade,
      required this.cidade,
      required this.vaga})
      : super(key: key);

  @override
  _QuizCardWidgetState createState() => _QuizCardWidgetState();
}

class _QuizCardWidgetState extends State<QuizCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(DateTime.now().millisecondsSinceEpoch.toString()),
      background: Container(
        color: Colors.red,
        child: Align(
          alignment: Alignment(-0.9, 0),
          child: Icon(
            Icons.delete,
            color: Colors.white,
          ),
        ),
      ),
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border.fromBorderSide(BorderSide(color: AppColors.border)),
          color: AppColors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  height: 80,
                  width: 80,
                  child: Image.asset(AppImages.silhueta),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 200,
                    child: Text(
                      widget.vaga,
                      style: AppTextStyles.heading15Deeppurple,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              widget.nomeIdade,
              style: AppTextStyles.heading15Blue,
            ),
            Text(
              widget.cidade,
              style: AppTextStyles.body,
            ),
            SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}
