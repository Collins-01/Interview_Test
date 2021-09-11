import 'package:interview_test/app_routes.dart';
import 'package:interview_test/locator.dart';
import 'package:interview_test/services/navigation_service.dart';
import 'package:interview_test/views/base_view_model.dart';

class  SplashScreenViewModel extends BaseViewModel {
  NavigationService _navigationService=locator<NavigationService>();
  onPageLoad(){
    Future.delayed(Duration(seconds: 2),(){
      _navigationService.navigateToReplace(AppRoutes.UNAUTHENTICATED_VIEW);
    });
  }


}