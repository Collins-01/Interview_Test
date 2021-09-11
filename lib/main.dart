import 'package:flutter/material.dart';
import 'package:interview_test/utils/app_theme.dart';
import 'package:interview_test/views/authentications/splash_screen_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: MyTheme().themeData,
      home: SpalshScreenView(),
    );
  }
}

