import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:work_motion_test/src/controllers/export_controllers.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final SplashController controllerSplashScreen = Get.put(SplashController());
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: Image.asset('assets/images/logo_work_motion.jpg')),
    );
  }
}
