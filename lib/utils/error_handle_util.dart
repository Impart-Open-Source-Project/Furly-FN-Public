import 'package:flutter/material.dart';

import '../constants/error_code.dart';
import '../constants/global_constant.dart';

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

  String? translateErrorCode(int errorCode) {
    if (errorCodeTranslateMap.containsKey(errorCode) && errorCode != 93) {
      return errorCodeTranslateMap[errorCode];
    }
    return null;
  }
}
