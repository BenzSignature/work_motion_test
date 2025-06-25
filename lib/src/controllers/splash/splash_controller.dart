import 'dart:developer';

import 'package:get/get.dart';
import 'package:work_motion_test/src/routes/export_routes.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    log('✅ SplashController loaded');
    Future.delayed(const Duration(seconds: 2), () {
      log('✅ SplashController loaded');
      Get.offAndToNamed(PathRoutes.home);
    });
  }
}
