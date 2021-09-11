import 'package:flutter/material.dart';
import 'package:interview_test/locator.dart';
import 'package:interview_test/routings.dart';
import 'package:interview_test/services/navigation_service.dart';
import 'package:interview_test/utils/app_theme.dart';
import 'package:interview_test/views/authentications/splash_screen_view.dart';

void main() {
  setUpLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Interview Test',
      theme: MyTheme().themeData,
      onGenerateRoute: Routings.generateRoutes,
      home: SpalshScreenView(),
      navigatorKey: locator<NavigationService>().navigationKey,
    );
  }
}

