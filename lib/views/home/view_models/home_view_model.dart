import 'package:flutter/material.dart';
import 'package:interview_test/utils/size_config.dart';
import 'package:interview_test/views/base_view_model.dart';

class HomeViewModel extends BaseViewModel {
  bool isPortrait = SizeConfig.orientation == Orientation.portrait;
  int selectedIndex = 0;
  List<Map<String, String>> items = [
    {'icon': 'assets/icons/dishes.svg', 'title': 'Resturant'},
    {'icon': 'assets/icons/plate.svg', 'title': 'Catering'},
    {'icon': 'assets/icons/plate.svg', 'title': 'Resturant'},
    {'icon': 'assets/icons/plate.svg', 'title': 'Resturant'},
    {'icon': 'assets/icons/plate.svg', 'title': 'Catering'},
    {'icon': 'assets/icons/plate.svg', 'title': 'Catering'},
  ];
  void setIndex(int index) {
    selectedIndex = index;
    notifyListeners();
  }
}
