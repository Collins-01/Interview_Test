import 'package:flutter/material.dart';
import 'package:interview_test/app_routes.dart';
import 'package:interview_test/views/authentications/sign_up_view.dart';
import 'package:interview_test/views/authentications/splash_screen_view.dart';
import 'package:interview_test/views/authentications/unauthenticated_view.dart';
import 'package:interview_test/views/home/home_view.dart';
import 'package:interview_test/widgets/app_text.dart';

class Routings {
 static Route<dynamic> generateRoutes(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case AppRoutes.HOMEVIEW:
        return MaterialPageRoute(builder: (_) => HomeView());
      
      case AppRoutes.SPLASHSCREEN_VIEW:
        return MaterialPageRoute(builder: (_) => SpalshScreenView());
      
      case AppRoutes.SIGN_UP_VIEW:
        return MaterialPageRoute(builder: (_) => SignUpView());
      case AppRoutes.UNAUTHENTICATED_VIEW:
        return MaterialPageRoute(builder: (_) => UnAuthenticatedView());
     
      default: return MaterialPageRoute(builder: (_) => Scaffold(
        body: Center(
          child: AppText(
            content: "No Route for ${routeSettings.name}",
          ),
        ),
      ));
    }
  }
}
