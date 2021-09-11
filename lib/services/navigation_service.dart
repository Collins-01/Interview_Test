import 'package:flutter/material.dart';

class NavigationService {
  GlobalKey<NavigatorState> navigationKey=new GlobalKey<NavigatorState>();

  void navigateBack(){
    navigationKey.currentState!.pop();
  }
  void navigateTo(String routname){
    navigationKey.currentState!.pushNamed(routname);
  }
   void navigateToReplace(String routname){
    navigationKey.currentState!.pushReplacementNamed(routname);
  }
  

}