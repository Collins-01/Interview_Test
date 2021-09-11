import 'package:flutter/material.dart';
import 'package:interview_test/enums/view_state.dart';

class BaseViewModel extends ChangeNotifier{

  ViewState _viewState=ViewState.Idle;
  ViewState get viewState=>_viewState;


  setViewState(ViewState state){
    _viewState=state;
    notifyListeners();
  }
}