import 'package:flutter/material.dart';
import 'package:flutter_base/app/utils/logger.dart';
import 'package:get/get.dart';

import '../base/api_service.dart';
import '../base/preferences.dart';

class BaseController extends GetxController {
  static BaseController get to => Get.find();

  bool get isFirstTime => Preferences.isFirstTime;

  set isFirstTime(bool isFirstTime) => Preferences.isFirstTime = isFirstTime;

  bool get isLoggedIn => Preferences.token.isNotEmpty;

  set token(String token) => Preferences.token = token;



  void logout() {
    Preferences.clear();
    // Get.offAllNamed(Routes.SIGN_IN);
  }


}
