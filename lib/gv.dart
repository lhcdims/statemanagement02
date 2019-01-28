import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'dart:convert';

enum Actions { Increment } // The reducer, which takes the previous count and increments it in response to an Increment action.
int counterReducer(int intSomeInteger, dynamic action) {
  if (action == Actions.Increment) {
    // print('Store Incremented: ' + (intSomeInteger + 1).toString());
    return intSomeInteger + 1;
  }

  return intSomeInteger;
}

class gv {
  static Store<int> storeState = new Store<int>(counterReducer, initialState: 0);

  static var gstrCurPage = 'page1'; // gstrCurPage stores the Current Page to be loaded

  static var gintBottomIndex = 0; // Which Tab is selected in the Bottom Navigator Bar

  static var gintGlobal1 = 0;  // Global Counter 1
  static var gintGlobal2 = 0;  // Global Counter 2

  static var gintPage1Counter = 0; // No. of initState called in Page 1
  static var gintPage2Counter = 0; // No. of initState called in Page 2
  static var gintPage3Counter = 0; // No. of initState called in Page 3

  static bool gbolNavigatorBeingPushed = false; // Since Navigator.push will called the initState TWICE, this variable make sure the initState only be called once effectively!

  static var gctlPage2Text = TextEditingController(); // Controller for the text field in Page 2
}