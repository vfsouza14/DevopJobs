import 'package:devop_jobs/home/home_page.dart';
import 'package:devop_jobs/login/login_page.dart';
import 'package:devop_jobs/splash/splash_page.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "DevopsJobs",
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashPage(),
        'login': (context) => LoginPage(),
        '/home': (context) => HomePage(),
      },
    );
  }
}
