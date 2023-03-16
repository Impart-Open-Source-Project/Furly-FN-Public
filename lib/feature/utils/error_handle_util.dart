import 'package:flutter/material.dart';

import '../../constants/global_constant.dart';

class ErrorHandler {
  void showErrorSnackBar(String message) {
    if (Global.rootScaffoldKey.currentContext != null) {
      ScaffoldMessenger.of(Global.rootScaffoldKey.currentContext!).showSnackBar(
        SnackBar(
          content: Text(message),
        ),
      );
    }
  }
}
