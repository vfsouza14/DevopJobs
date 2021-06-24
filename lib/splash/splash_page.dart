import 'package:devop_jobs/core/app_gradients.dart';
import 'package:devop_jobs/core/app_text_styles.dart';
import 'package:devop_jobs/login/login_page.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2)).then((_) => Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LoginPage())));
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: AppGradients.linear,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: Icon(
              Icons.approval,
              size: 200.0,
            )),
            Text(
              "DevopJobs",
              style: AppTextStyles.heading40White,
            )
          ],
        ),
      ),
    );
  }
}
