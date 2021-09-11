import 'package:flutter/material.dart';
import 'package:interview_test/app_routes.dart';
import 'package:interview_test/locator.dart';
import 'package:interview_test/services/navigation_service.dart';
import 'package:interview_test/views/base_view_model.dart';

class SignUpViewModel extends BaseViewModel{

  NavigationService _navigationService=locator<NavigationService>();
  final TextEditingController firstNameController=new TextEditingController();
    final TextEditingController lastNameController=new TextEditingController();
 @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    super.dispose();
  }
 navigateToHome(){
   _navigationService.navigateToReplace(AppRoutes.HOMEVIEW);
 }
  
}