import 'package:interview_test/app_routes.dart';
import 'package:interview_test/locator.dart';
import 'package:interview_test/services/navigation_service.dart';
import 'package:interview_test/views/base_view_model.dart';

class UnAuthenticatedViewModel extends BaseViewModel {
    NavigationService _navigationService=locator<NavigationService>();
  

  naviagetSIgnUpView(){
    _navigationService.navigateTo(AppRoutes.SIGN_UP_VIEW);
  }
}

